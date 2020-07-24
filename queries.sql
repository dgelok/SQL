--     -- What are all projects that use JavaScript?
-- SELECT
--     *
-- FROM 
--     project
-- INNER JOIN 
--     project_uses_tech 
-- ON
--     project_uses_tech.project_id = project.id
-- WHERE
--     tech_id = 3

--     -- What are all technologies used by the Personal Website?

-- SELECT
--     tech.name, project.name
-- FROM
--     project
-- JOIN   
--     project_uses_tech
-- ON
--     project.id = project_uses_tech.project_id
-- JOIN
--     tech
-- ON
--     project_uses_tech.tech_id = tech.id
-- WHERE
--     project.id = 4;

--     -- Perform a left outer join from the tech table to the project_uses_tech table - 
--     -- which techs has no associated project?
-- SELECT
--     name, count(tech_id)
-- FROM
--     tech
-- LEFT OUTER JOIN
--     project_uses_tech
-- ON
--     tech.id = project_uses_tech.tech_id
-- GROUP BY
--     tech.id


    -- Based on the previous query, get the count of the number of techs used by each project.

-- SELECT
--     name, count(tech_id)
-- FROM
--     project
-- LEFT OUTER JOIN
--     project_uses_tech
-- ON
--     project.id = project_uses_tech.project_id
-- GROUP BY
--     project.id;


-- Perform a left outer join from the project table to the project_users_tech table - which projects has no associated tech?
-- SELECT
--     name, count(tech_id)
-- FROM
--     project
-- LEFT OUTER JOIN
--     project_uses_tech
-- ON
--     project.id = project_uses_tech.project_id
-- GROUP BY
--     project.id;


-- Based on the previous query, get the count of the number of project that use each tech.


    -- Perform a left outer join from the project table to the project_users_tech table - which projects has no associated tech?
    -- Based on the previous query, get the count of the number of projects that use each tech.
    -- List all projects along with each technology used by it. You will need to do a three-way join.
    -- List all the distinct techs that are used by at least one project.
    -- List all the distinct techs that are not used by any projects.
    -- List all the distinct projects that use at least one tech.
    -- List all the distinct projects that use no tech.
    -- Order the projects by how many tech it uses.
    -- Order the tech by how many projects use it.
    -- What is the average number of techs used by a project?
