[@ui.bambooSection title='<img width="30px" src="${req.contextPath}/download/resources/com.browserstack.bamboo.browserstack-bamboo-integration:BStackAssets/browserstack_icon.svg" />BrowserStack Settings']
  [@ww.checkbox label='Override Admin Config' name='custom.browserstack.override' toggle='true' description='Override the BrowserStack configuration set in the Administration Section.'/]
  [@ui.bambooSection dependsOn='custom.browserstack.override' showOn='true']
    [@ui.bambooSection]
        [@ww.textfield name="${browserstack_username_key}" label='Username' /]
        [@ww.textfield name="${browserstack_access_key_key}" label='Access Key' /]
        [@ww.checkbox label='Enable BrowserStack Local' name='${browserstack_local_enabled_key}' toggle='true' description='BrowserStack Local allows you to test your private and internal servers, alongside public URLs on BrowserStack, <a href="https://www.browserstack.com/local-testing">more information</a>.' /]

        [@ui.bambooSection dependsOn='${browserstack_local_enabled_key}' showOn='true']
            [@ww.textfield name="${browserstack_local_path_key}" label='Binary Path' description='If left empty, plugin will download it.' /]
            [@ww.textfield name="${browserstack_local_args_key}" label='Binary Arguments' description='If left empty, binary will be launched with the default arguments.' /]
        [/@ui.bambooSection]
    [/@ui.bambooSection]
  [/@ui.bambooSection]
[/@ui.bambooSection]