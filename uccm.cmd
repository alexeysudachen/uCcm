@echo off

rem 
rem  It's an uCcm starting script
rem 
rem  normally it needs to be redistributed as part of the your project
rem

rem  Environment variable UCCM100REPO says 
rem     where uccm should place all packages and itself also
rem  Environment variable UCCM100DEV says
rem     you are using development version taken from git repository
rem     and where it is

cd %~dp0
set PROGNAME=%~nx0

if "%UCCM100REPO%"=="" set UCCM100REPO=%LOCALAPPDATA%\uCcm100Repo

for %%i in (%*) do if %%i == --self-update goto :do_self_update
for %%i in (%*) do if %%i == --no-dev set UCCM100DEV=

if not "%UCCM100DEV%" == "" goto :exec_dev_version

:exec_no_dev
if exist "%UCCM100REPO%\uccm-uccm100\uccm100.cmd" goto :uccm100
cmd /c java -jar %PROGNAME%
if %errorlevel% EQU 0 goto :uccm100
echo "failed to acquire uCcm build manager"
exit 1
:uccm100
if %errorlevel% NEQ 0 exit 1
"%UCCM100REPO%\uccm-uccm100\uccm100.cmd" %*

:do_self_update
if exist "%UCCM100REPO%\uccm-uccm100" rmdir /Q /S "%UCCM100REPO%\uccm-uccm100"
cmd /c java -jar %PROGNAME%
if %errorlevel% EQU 0 goto :eof
echo "failed to acquire uCcm build manager"
exit 1

:exec_dev_version
echo *** Development uCcm version is using now ***
%UCCM100DEV%\uccm100.cmd %*

rem
rem
rem
rem
rem
rem
rem
rem
rem
rem
rem
remPK  �GJ            	  META-INF/��   PK           PK  �GJ               META-INF/MANIFEST.MF�M��LK-.�K-*��ϳR0�3��r.JM,IM�u�	X�ě�+h�%&�*8��%� �k�r�&f��:�$[)�&'�깧��i^.^. PKX�j�[   ^   PK  �GJ               uccm/GetUccm.class�V�sU��&��n�-���6E�J�-mV���-޶��n���d������z���I�:���8>��⋾��8#X��Il�:c&sΞ�|������g�닯 ��E� ��.�CF:+Ѕ��2<�I�s���O4��n	wȤ��1 �����Na{�����=�BU��bNH�$��Cb��e\��$��@I)Li�'#��,��$��d����W� ����2pX��#�D�!��9a�l�����
����n1CML7�;5�ez��$I�)U7���F�}j(�C�+�CM°��R��j�ѧ�Q8�x��q�'8�$�O$�� ��v&�mӅwe�f���z�[���@2'��Y�����a�JgáАnۃ�q3��	5>�!�lCj&>��Ӝź���CzZ�z����9��WCo��dB�a�
�Y-�:�
��
�b��E/�i�ʾ��vr���T�2^)b��P�F��%�tu�Fz#
^�1�E��q�N&�i��F"�4�j2I�[U������nqpwkiS�>���1x��D�@�v	��c��T�<�7pZ�����:m+m[�XSS��T��iZܢ���+xoS���9JӐf���@[W]!�R�*x�RQ��=�XU����Rb�9�mKO�Uh@O
>��T��|�O���ьV栂O1��3�w��L�-z ��-�4\p��)}�}fMkv�A2��c�T���=�EX��k)$�4�8Ȩ�(�)�5씖Q�ھ��G�c������iR_�迋��	�GM�5#�P7��kD��&C�2�"��V���QIDj��X%���ZA3�1��_�X퀞���e�F-C��MB"���,�J۳i�4��F�8�!2�5���u��0Cu�`ZZ��J������'�bTꝄ�$z�F�A7�*XD�I�/m���<^�䰚���5����l���f�hypO��6��gt��pZ�9I*�'ͬ�ht$t��/:����]Ͱ�m73Z4��Ȁ�+�UX^]��� 3N�;���Գ�z��f� C(��h6���t���EЛQ����nQ�+otôZB3���v�<=04��q�2*���e��M�!عI��{]p�.�|��	p��CŚd�r��A�V]B�w�3��~�y���Q�g��u9xO���x璍�|b��;o���:�Mv���S�-��Ȼ��o�M����	�n��/�p����j�d�]F��pyX���B����
y+��i�����.�a�����6zƧ~��s�)�jaRK&�X#���~b\��W~zٞ�a�b�aEpY�WrXGt�U�����r�u�y��qDh���/���T�վ�S��aU���S�:�t�S�ӅG�nI</�ǎ���qQ�T�[�� �O�l������X�X�n,� �n��ѱ�>b���
��U�(H�j�`j�XC��Z\$�I����7�G��n�/�d�Qk�N��'626�*la�a+�E�m@3���u#���6�ۙ�ۘ�6v��gcG��^A';�^B���B7;�v}�E�el��r��rl�"F.�IhTN���o��q�rD��,��Ʊ�
6q�F*���-�S�t�-�I�DI��91;�PK���`  �
  PK   �GJ           	                META-INF/��  PK   �GJX�j�[   ^                =   META-INF/MANIFEST.MFPK   �GJ���`  �
               �   uccm/GetUccm.classPK      �   z    