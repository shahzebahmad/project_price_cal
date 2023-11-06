using projectService as service from '../../srv/project_price-service';

annotate service.project_header with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ProjectId}',
            Value : project_id,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ProjectDescription}',
            Value : project_desc,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>StartDate}',
            Value : start_date,
        },
        {
            $Type : 'UI.DataField',
            Value : end_date,
            Label : '{i18n>EndDate}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Creator}',
            Value : creator,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Creation Date',
            Value : date_of_creation,
        },
    ]
);
annotate service.project_header with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'project_id',
                Value : project_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'date_of_creation',
                Value : date_of_creation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'creator',
                Value : creator,
            },
            {
                $Type : 'UI.DataField',
                Label : 'project_desc',
                Value : project_desc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'start_date',
                Value : start_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'end_date',
                Value : end_date,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
