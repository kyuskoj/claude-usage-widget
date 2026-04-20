@echo off
chcp 65001 > nul
title Node.js Project to EXE Builder
echo [1/2] 의존성 라이브러리 설치 중 (npm install)...
call npm install

if %errorlevel% neq 0 (
    echo.
    echo [!오류] 라이브러리 설치에 실패했습니다. 네트워크 상태나 package.json을 확인하세요.
    pause
    exit /b %errorlevel%
)

echo.
echo [2/2] EXE 파일 빌드 시작 (npm run build)...
call npm run build

if %errorlevel% neq 0 (
    echo.
    echo [!오류] 빌드 과정에서 문제가 발생했습니다.
    pause
    exit /b %errorlevel%
)

echo.
echo ==========================================
echo [완료] 모든 작업이 성공적으로 끝났습니다!
echo dist 또는 out 폴더를 확인해 보세요.
echo ==========================================
pause