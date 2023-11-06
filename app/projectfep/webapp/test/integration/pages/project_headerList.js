sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'project.cal.projectfep',
            componentId: 'project_headerList',
            contextPath: '/project_header'
        },
        CustomPageDefinitions
    );
});