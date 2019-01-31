# UFMT Online - Open Edx Theme

Based on https://github.com/dehamzah/starter-theme-openedx


## Instruções
* Mudar para o usuário `edxapp`
```
sudo -u edxapp bash
```
* Criar uma pasta em `/edx/app/edxapp/themes`
* Entrar na pasta
```
cd /edx/app/edxapp/themes
```
* Clonar esse repositório
```
git clone https://github.com/ejklock/edx.ufmt-online.git
```
* Alterar os arquivos de configuração ``lms.env.json`` e ``cms.env.json`` para:
```
ENABLE_COMPREHENSIVE_THEMING: true,
COMPREHENSIVE_THEME_DIRS: ["/edx/app/edxapp/themes"],
DEFAULT_SITE_THEME: "edx.ufmt-online",
```
* Volte para seu usuário ``su <seu_usuario> `` 
* Reinicie o serviços do OpenEdx
```
sudo /edx/bin/supervisorctl restart all:

```
* Rode o script ``update.sh``
```
cd /edx/app/edxapp/themes/edx.ufmt-online/
chmod +X update.sh
sudo ./update.sh
```
