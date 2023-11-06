using project_price as pr from '../db/project_price-model';

service projectService {
    entity project_header as select from pr.project_header;
    entity grade as select from pr.grade;
    entity role as select from pr.role;
    entity resource_cal as select from pr.resource_cal;
}