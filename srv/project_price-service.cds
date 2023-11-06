using project_price as pr from '../db/project_price-model';

service projectService {
    entity project_header as select from pr.project_header;
    entity grade          as select from pr.grade;
    entity role           as select from pr.role;
    entity resource_cal   as select from pr.resource_cal;
}


annotate pr.resource_cal with {
    grade @(Common: {
        Text     : {
            $value                 : grade,
            ![@UI.TextArrangement] : #TextOnly
        },
        ValueList: {
            SearchSupported: true,
            Label          : 'Grade',
            CollectionPath : 'grade',
            Parameters     : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: grade,
                    ValueListProperty: 'grade'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'role_code'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'grade_desc'
                }
            ]
        }
    });

    role @(Common: {
        Text     : {
            $value                 : role,
            ![@UI.TextArrangement] : #TextOnly
        },
        ValueList: {
            SearchSupported: true,
            Label          : 'Role',
            CollectionPath : 'role',
            Parameters     : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: grade,
                    ValueListProperty: 'role_code'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'role_desc'
                }
            ]
        }
    });

    rate @(Common: {
        Text     : {
            $value                 : role,
            ![@UI.TextArrangement] : #TextOnly
        },
        ValueList: {
            SearchSupported: true,
            Label          : 'Rate',
            CollectionPath : 'grade',
            Parameters     : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: rate,
                    ValueListProperty: 'rate'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'grade'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'grade_desc'
                }
            ]
        }
    });


}
