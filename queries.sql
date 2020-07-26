--     -- What are all projects that use JavaScript?
-- SELECT 
--     project.name 
-- FROM project
-- JOIN   
--     project_uses_tech ON project.id = project_uses_tech.project_id
-- WHERE tech_id = 3;

--     -- What are all technologies used by the Personal Website?

-- SELECT
--     name
-- FROM 
--     tech
-- JOIN
--     project_uses_tech ON tech.id = project_uses_tech.tech_id
-- WHERE
--     project_id = 4;


-- Perform a left outer join from the tech table to the 
-- project_uses_tech table - 
-- -- which techs has no associated project?

-- SELECT
--     *
-- FROM
--     tech
-- LEFT OUTER JOIN 
--     project_uses_tech 
-- ON 
--     tech.id = project_uses_tech.tech_id;


    -- Based on the previous query, get the count of the number 
    -- of techs used by each project.

-- SELECT
--     name, count(tech_id)
-- FROM
--     tech
-- LEFT OUTER JOIN
--     project_uses_tech
-- ON
--     tech.id = project_uses_tech.tech_id
-- GROUP BY
--     tech.name;


-- Perform a left outer join from the project table to the 
-- project_users_tech table - 
-- which projects has no associated tech?

-- SELECT
--     name, tech_id
-- FROM
--     project
-- LEFT OUTER JOIN
--     project_uses_tech
-- ON
--     project.id = project_uses_tech.project_id;



-- Based on the previous query, get the count of the number of 
-- project that use each tech.

-- SELECT
--     name, count(tech_id)
-- FROM
--     project
-- LEFT OUTER JOIN
--     project_uses_tech
-- ON
--     project.id = project_uses_tech.project_id
-- GROUP BY
--     project.name;

-- List all projects along with each technology used by it. 
-- You will need to do a three-way join.

-- SELECT
--     project.name, tech.name
-- FROM
--     project
-- JOIN
--     project_uses_tech
-- ON
--     project.id = project_uses_tech.project_id
-- JOIN
--     tech
-- ON
--     tech.id = project_uses_tech.tech_id
-- GROUP BY
--     project.name, tech.name;


-- List all the distinct techs that are used by at least one project.

-- SELECT 
--     distinct(name)
-- FROM
--     tech
-- INNER JOIN
--     project_uses_tech
-- ON
--     tech.id = project_uses_tech.tech_id;

    -- List all the distinct techs that are not used by any projects.

-- SELECT
--     distinct(tech.name)
-- FROM
--     project
-- RIGHT OUTER JOIN
--     project_uses_tech
-- ON 
--     project.id = project_uses_tech.project_id
-- RIGHT OUTER JOIN
--     tech
-- ON
--     tech.id = project_uses_tech.tech_id    
-- WHERE
--     project.id is NULL;


    -- List all the distinct projects that use at least one tech.

-- ???

    -- List all the distinct projects that use no tech.

-- SELECT
--     distinct(project.name)
-- FROM
--     tech
-- RIGHT OUTER JOIN
--     project_uses_tech
-- ON
--     tech.id = project_uses_tech.tech_id    
-- RIGHT OUTER JOIN
--     project
-- ON 
--     project.id = project_uses_tech.project_id
-- WHERE
--     tech.id is NULL;

    -- Order the projects by how many tech it uses.

-- SELECT
--     * 
-- FROM
--     (SELECT 
--         project.id, project.name, count(project_uses_tech.tech_id)
--     FROM    
--         project
--     LEFT OUTER JOIN
--         project_uses_tech
--     ON
--         project_uses_tech.project_id = project.id
--     GROUP BY    
--         project.id) AS project_by_tech_count
-- ORDER BY
--     count DESC;

    -- Order the tech by how many projects use it.
    -- What is the average number of techs used by a project?
