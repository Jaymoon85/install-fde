#!/bin/bash
echo "---------------------------------------------------"
echo "Downloading Firefox Developer Edition..."
echo "---------------------------------------------------"
mkdir firefox-dev-temp
cd firefox-dev-temp
wget https://download-installer.cdn.mozilla.net/pub/devedition/releases/58.0b12/linux-x86_64/en-US/firefox-58.0b12.tar.bz2
echo "---------------------------------------------------"
echo "Installing Firefox Developer Edition..."
echo "---------------------------------------------------"
mv * firefox.tar.bz2
tar -jxvf firefox.tar.bz2
echo ""
echo "(Sudo password is needed...)"
sudo mv firefox/ /usr/lib64/firefox-developer-edition/
echo ""
cd ..
rm firefox-dev-temp/ -r
echo "---------------------------------------------------"
echo "Adding Firefox Developer Edition to applications..."
echo "---------------------------------------------------"
touch ~/.local/share/applications/firefox-developer-edition.desktop
echo "[Desktop Entry]
Version=1.0
Name=Firefox Developer Edition
GenericName=Web Browser
GenericName[ca]=Navegador web
GenericName[cs]=Webový prohlížeč
GenericName[es]=Navegador web
GenericName[fa]=مرورگر اینترنتی
GenericName[fi]=WWW-selain
GenericName[fr]=Navigateur Web
GenericName[hu]=Webböngésző
GenericName[it]=Browser Web
GenericName[ja]=ウェブ・ブラウザ
GenericName[ko]=웹 브라우저
GenericName[nb]=Nettleser
GenericName[nl]=Webbrowser
GenericName[nn]=Nettlesar
GenericName[no]=Nettleser
GenericName[pl]=Przeglądarka WWW
GenericName[pt]=Navegador Web
GenericName[pt_BR]=Navegador Web
GenericName[sk]=Internetový prehliadač
GenericName[sv]=Webbläsare
Comment=Browse the Web
Comment[ca]=Navegueu per el web
Comment[cs]=Prohlížení stránek World Wide Webu
Comment[de]=Im Internet surfen
Comment[es]=Navegue por la web
Comment[fa]=صفحات شبکه جهانی اینترنت را مرور نمایید
Comment[fi]=Selaa Internetin WWW-sivuja
Comment[fr]=Navigue sur Internet
Comment[hu]=A világháló böngészése
Comment[it]=Esplora il web
Comment[ja]=ウェブを閲覧します
Comment[ko]=웹을 돌아 다닙니다
Comment[nb]=Surf på nettet
Comment[nl]=Verken het internet
Comment[nn]=Surf på nettet
Comment[no]=Surf på nettet
Comment[pl]=Przeglądanie stron WWW 
Comment[pt]=Navegue na Internet
Comment[pt_BR]=Navegue na Internet
Comment[sk]=Prehliadanie internetu
Comment[sv]=Surfa på webben
Exec=/usr/lib64/firefox-developer-edition/firefox %u
Icon=firefox-developer-icon
Terminal=false
Type=Application
MimeType=text/html;text/xml;application/xhtml+xml;application/vnd.mozilla.xul+xml;text/mml;x-scheme-handler/http;x-scheme-handler/https;
StartupNotify=true
Categories=Network;WebBrowser;
Keywords=web;browser;internet;
Actions=new-window;new-private-window;

[Desktop Action new-window]
Name=Open a New Window
Exec=/usr/lib64/firefox-developer-edition/firefox %u

[Desktop Action new-private-window]
Name=Open a New Private Window
Exec=/usr/lib64/firefox-developer-edition/firefox --private-window %u" > ~/.local/share/applications/firefox-developer-edition.desktop
echo ""
echo ": Succesfully installed Firefox Developer Edition :"

