namespace project_price;

using {
  cuid,
  managed
} from '@sap/cds/common';

entity role {
    key role_code : String(4);
    role_desc : String;
}

entity grade {
    key role_code  : String(4);
    grade      : String(4);
    grade_desc : String;
    rate       : String;
}

entity project_header{
    key project_id      : String;
    project_desc    : String;
    start_date      : Date;
    end_date        : Date;
    resource_calc   : Composition of many resource_cal on resource_calc.project_id = $self
}

entity resource_cal {
    key res_id      : String;
    project_id      : Association to one project_header;
    role            : String(4);
    grade           : String(4);
    data            : LargeString;

}