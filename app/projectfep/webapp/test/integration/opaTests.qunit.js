sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project/cal/projectfep/test/integration/FirstJourney',
		'project/cal/projectfep/test/integration/pages/project_headerList',
		'project/cal/projectfep/test/integration/pages/project_headerObjectPage'
    ],
    function(JourneyRunner, opaJourney, project_headerList, project_headerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project/cal/projectfep') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheproject_headerList: project_headerList,
					onTheproject_headerObjectPage: project_headerObjectPage
                }
            },
            opaJourney.run
        );
    }
);