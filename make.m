% %%%%%%%%%%%%%%%% CONFIGURATION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% opencl_include_dir = '/usr/include';
% opencl_lib_dir = '/usr/lib';
% opencl_include_dir = 'C:\Program Files\ATI Stream\include';
% opencl_lib_dir = 'C:\Program Files\ATI Stream\lib\x86';
opencl_include_dir = '/System/Library/Frameworks/OpenCL.framework/Headers';
opencl_lib_dir = '/System/Library/Frameworks/OpenCL.framework/Libraries';
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc;

if ismac
    link_opts = 'LINKLIBS=$LINKLIBS -framework OpenCL';
else
    link_opts = ['-L' opencl_lib_dir];
end

mex('-Iinclude', ['-I' opencl_include_dir], link_opts, ...
    'src/openclcmd.cpp');
