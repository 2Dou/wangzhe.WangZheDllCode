::����һ����ʱ�ļ��У��Ž�ѹ����ļ�
md %cd%\UnityOrignalApk

::��ѹ����ʱ�ļ���
start /wait winrar e -o+ %1 %cd%\UnityOrignalApk

::ɾ����İ�
del /s /q %~f1

::����4���ؼ��ļ���ָ��Ŀ¼
copy  %cd%\UnityOrignalApk\Assembly-CSharp.dll %cd%\apktool_2.2.2\wangzhe\assets\bin\Data\Managed\
copy  %cd%\UnityOrignalApk\Assembly-CSharp.dll.mdb %cd%\apktool_2.2.2\wangzhe\assets\bin\Data\Managed\
copy  %cd%\UnityOrignalApk\Assembly-CSharp-firstpass.dll %cd%\apktool_2.2.2\wangzhe\assets\bin\Data\Managed\
copy  %cd%\UnityOrignalApk\Assembly-CSharp-firstpass.dll.mdb %cd%\apktool_2.2.2\wangzhe\assets\bin\Data\Managed\

::���
call %cd%\apktool_2.2.2\apktool.bat b %cd%\apktool_2.2.2\wangzhe


::ǩ��
Echo StartSign...
::java -jar %cd%\autosign\signapk.jar %cd%\autosign\testkey.x509.pem %cd%\autosign\testkey.pk8 %cd%\apktool_2.2.2\wangzhe\dist\wangzhe.apk %cd%\apktool_2.2.2\wangzhe\dist\wangzhe_signed.apk
java -jar %cd%\autosign\signapk.jar %cd%\autosign\testkey.x509.pem %cd%\autosign\testkey.pk8 %cd%\apktool_2.2.2\wangzhe\dist\wangzhe.apk %1

::ɾ�������δǩ�����ͽ�ѹ���ļ���
del %cd%\apktool_2.2.2\wangzhe\dist\wangzhe.apk
rd /s /q %cd%\UnityOrignalApk

::�򿪴���
Echo Complete!
start explorer %~dp1
pause