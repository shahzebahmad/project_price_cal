sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'project.cal.projectfep',
            componentId: 'project_headerObjectPage',
            contextPath: '/project_header'
        },
        CustomPageDefinitions
    );
});