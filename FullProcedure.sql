
---------------------------------------------------------------------------------------------------

-- Database selection (Delete/edit)
USE DAEN_690

---------------------------------------------------------------------------------------------------

-- Drop the Response table if it already exists
IF OBJECT_ID('ResponseTable', 'U') IS NOT NULL
    DROP TABLE ResponseTable;
	
-- Create the Response table
CREATE TABLE ResponseTable (
    AttributeCode NVARCHAR(255),
    Response INT,
);

---------------------------------------------------------------------------------------------------

-- Drop the FilterYouthJoin table if it already exists
IF OBJECT_ID('FilterYouthJoinTable', 'U') IS NOT NULL
    DROP TABLE FilterYouthJoinTable;

-- Create the FilterYouthJoinTable table
CREATE TABLE FilterYouthJoinTable (
    PUDID INT,
    sex2 INT,
    race2___1 INT,
    race2___2 INT,
    race2___3 INT,
    race2___4 INT,
    race2___5 INT,
    race2___92 INT,
    ethnicity2 INT,
    schoolgrade2 INT,
    mothereducation2 INT,
    fathereducation2 INT,
    welfare2 INT,
    fcs1 INT,
    fcs2 INT,
    socialc1 INT,
    socialc2 INT,
    schoolc1 INT,
    schoolc2 INT,
    les1 INT,
    les1a INT,
    les2 INT,
    les2a INT,
    les3 INT,
    les3a INT,
    les4 INT,
    les4a INT,
    pds1 INT,
    pds2 INT,
    pds3 INT,
    pds4 INT,
    pds5 INT,
    pds6 INT,
    promis1 INT,
    promis2 INT,
    promis3 INT,
    promis4 INT,
    mcq1time INT,
    mcq1ampm INT,
    mcq2time INT,
    mcq2ampm INT,
    mcq3time INT,
    mcq3ampm INT,
    mcq3alarm INT,
    mcq4time INT,
    mcq4ampm INT,
    mcq5time INT,
    mcq5ampm INT,
    mcq6time INT,
    mcq6ampm INT,
    mcq6alarm INT,
    asq1 INT,
    asq2 INT,
    asq3 INT,
    asq4 INT,
    cssrs1 INT,
    cssrs1a INT,
    cssrs2 INT,
    cssrs2a INT,
    cssrs2b INT,
    cssrs3 INT,
    cssrs3a INT,
    cssrs4 INT,
    cssrs4a INT,
    cssrs5 INT,
    cssrs5a INT,
    cssrs5b INT,
    cssrs5c INT,
    cssrs6 INT,
    cssrs6a INT,
    cssrs6b INT,
    cssrs6c INT,
    cssrs7 INT,
    cssrs7a INT,
    cssrs7b INT,
    cssrs7c INT,
    cssrs8 INT,
    cssrs8a INT,
    cssrs9 INT,
    cssrs9a INT,
    cssrs10 INT,
    cssrs10a INT,
    sic1 INT,
    sic2 INT,
    sic3a INT,
    sic3b INT,
    sic3c INT,
    cssrsbs1DAY INT,
    cssrsbs2___1 INT,
    cssrsbs2___2 INT,
    cssrsbs2___3 INT,
    cssrsbs2___4 INT,
    cssrsbs2___5 INT,
    cssrsbs2___6 INT,
    cssrsbs2___7 INT,
    cssrsbs2___90 INT,
    nssi1 INT,
    nssi1a INT,
    nssi2___1 INT,
    nssi2___2 INT,
    nssi2___3 INT,
    nssi2___4 INT,
    nssi2___5 INT,
    nssi2___6 INT,
    nssi2___7 INT,
    nssi2___8 INT,
    nssi2___9 INT,
    nssi2___10 INT,
    nssi2___90 INT,
    pvp1 INT,
    pvp2 INT,
    pvp3 INT,
    pvp4 INT,
    hi1 INT,
    hi2 INT,
    phq91 INT,
    phq92 INT,
    phq93 INT,
    phq94 INT,
    phq95 INT,
    phq96 INT,
    phq97 INT,
    phq98 INT,
    phq99 INT,
    phq10 INT,
    hmfq INT,
    ipas1 INT,
    ipas1a INT,
    ipas1b1 INT,
    ipas1b2 INT,
    ipas1b3 INT,
    upps1 INT,
    upps2 INT,
    upps3 INT,
    upps4 INT,
    yrbs1 INT,
    yrbs2 INT,
    yrbs3 INT,
    auditc1 INT,
    auditc2 INT,
    auditc3 INT,
    dus1 INT,
    dus2 INT,
    dus2a INT,
    dus3 INT,
    dus3a INT,
    dus4 INT,
    dus4a INT,
    dus5 INT,
    bam1 INT,
    bam2 INT,
    bam3 INT,
    scaredc1 INT,
    scaredc2 INT,
    scaredc3 INT,
    scaredc4 INT,
    scaredc5 INT,
    disciv1 INT,
    disciv2 INT,
    disciv3 INT,
    disciv4 INT,
    siba1___1 INT,
    siba1___2 INT,
    siba1___3 INT,
    siba1___4 INT,
    siba1___5 INT,
    siba1___90 INT,
    siba2___1 INT,
    siba2___2 INT,
    siba2___3 INT,
    siba2___4 INT,
    siba2___5 INT,
    siba2___6 INT,
    siba2___7 INT,
    siba2___93 INT,
    siba3 INT,
    siba4 INT,
    eat INT,
    panas1 INT,
    panas2 INT,
    panas3 INT,
    panas4 INT,
    panas5 INT,
    PHQ10FU INT,
    PHQ91FU INT,
    PHQ92FU INT,
    PHQ93FU INT,
    PHQ94FU INT,
    PHQ95FU INT,
    PHQ96FU INT,
    PHQ97FU INT,
    PHQ98FU INT,
    PHQ99FU INT,
    HMFQFU INT,
    AUDITC1FU INT,
    AUDITC2FU INT,
    AUDITC3FU INT,
    CSSRS1FU INT,
    CSSRS2FU INT,
    CSSRS3FU INT,
    CSSRS4FU INT,
    CSSRS5FU INT,
    CSSRS5AFU INT,
    CSSRS6FU INT,
    CSSRS6AFU INT,
    CSSRS7FU INT,
    CSSRS8FU INT,
    CSSRS9FU INT,
    CSSRS10FU INT,
    NSSI1FU INT,
    NSSI1AFU INT,
    NSSI2FU___1 INT,
    NSSI2FU___2 INT,
    NSSI2FU___3 INT,
    NSSI2FU___4 INT,
    NSSI2FU___5 INT,
    NSSI2FU___6 INT,
    NSSI2FU___7 INT,
    NSSI2FU___8 INT,
    NSSI2FU___9 INT,
    NSSI2FU___10 INT,
    NSSI2FU___90 INT,
    MHSU2FU INT,
    MHSU2AFU INT,
    MHSU1FU INT,
    MHSU1AFU INT,
    MHSU1A1FU INT,
    MHSU3FU INT,
    MHSU3AFU INT,
    MHSU4FU INT,
    MHSU4AFU INT
);

---------------------------------------------------------------------------------------------------

-- Create youth_join filter
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'FilterYouthJoin')
    DROP PROCEDURE FilterYouthJoin;
GO

CREATE PROCEDURE FilterYouthJoin
AS
BEGIN

-- Clear the FilterYouthJoin table if it already exists
	DELETE FROM FilterYouthJoinTable;
	
    -- Check if the table exists, if so truncate it
    IF OBJECT_ID('dbo.FilterYouthJoinTable', 'U') IS NOT NULL
    TRUNCATE TABLE FilterYouthJoinTable;

    DECLARE @SQLQuery NVARCHAR(MAX) = 'INSERT INTO FilterYouthJoinTable SELECT * FROM youth_join';
    DECLARE @Condition NVARCHAR(MAX) = '';
    DECLARE @RowsToFilter INT;
    DECLARE @AttributeCode NVARCHAR(255), @Response INT;

    -- Check if there are any rows to filter
    SELECT @RowsToFilter = COUNT(*) FROM ResponseTable;

    IF @RowsToFilter > 0
    BEGIN
        -- There are conditions to apply
        SET @SQLQuery = @SQLQuery + ' WHERE ';
        DECLARE conditionCursor CURSOR FOR
            SELECT AttributeCode, Response FROM ResponseTable;

        OPEN conditionCursor;
        FETCH NEXT FROM conditionCursor INTO @AttributeCode, @Response;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            IF LEN(@Condition) > 0
                SET @Condition = @Condition + ' AND ';
            
            -- Building condition. Note: Ensure AttributeCode is validated to prevent SQL Injection.
            SET @Condition = @Condition + @AttributeCode + ' = ' + CAST(@Response AS NVARCHAR(10));

            FETCH NEXT FROM conditionCursor INTO @AttributeCode, @Response;
        END

        CLOSE conditionCursor;
        DEALLOCATE conditionCursor;

        -- Append the conditions to the main SQL query
        SET @SQLQuery = @SQLQuery + @Condition;
    END

    -- For debugging: PRINT the query
    PRINT @SQLQuery;

    -- Execute the built dynamic SQL query
    EXEC sp_executesql @SQLQuery;
END;
GO
EXEC FilterYouthJoin;

---------------------------------------------------------------------------------------------------

-- Drop the LikelihoodRatios table if it already exists
IF OBJECT_ID('LikelihoodRatios', 'U') IS NOT NULL
    DROP TABLE LikelihoodRatios;

-- Create the LikelihoodRatios table
CREATE TABLE LikelihoodRatios (
    AttributeCode NVARCHAR(255),
    AttributeDetails NVARCHAR(MAX),
    Response INT,
    LikelihoodRatio FLOAT
);

---------------------------------------------------------------------------------------------------

-- Drop the AttributeCodes table if it already exists
IF OBJECT_ID('AttributeCodes', 'U') IS NOT NULL
    DROP TABLE AttributeCodes;

-- Create the AttributeCodes table
CREATE TABLE AttributeCodes (
    Code NVARCHAR(255),
    Details NVARCHAR(MAX)
);
    
-- Insert attribute codes and their Detailss
INSERT INTO AttributeCodes (Code, Details)
VALUES 
('PHQ10FU', 'Hard to Get Along w/ Others'),
('PHQ91FU', 'Down, Depressed, or Hopeless'),
('PHQ92FU', 'Tired or Little Energy'),
('PHQ93FU', 'Poor Appetite or Overeating'),
('PHQ94FU', 'Thoughts of Hurting Self'),
('PHQ95FU', 'Trouble with Sleep'),
('PHQ96FU', 'Trouble Concentrating'),
('PHQ97FU', 'Moving Slow or Restless'),
('PHQ98FU', 'Little Interest or Pleasure'),
('PHQ99FU', 'Feeling Bad About Self'),
('HMFQFU', 'Nothing Good in Future'),
('AUDITC1FU', 'Drink with Alcohol'),
('AUDITC2FU', 'Number of Alcohol Drinks'),
('AUDITC3FU', 'Six or More Drinks at Once'),
('CSSRS1FU', 'Not Wake Up'),
('CSSRS2FU', 'Thoughts of Killing Self'),
('CSSRS3FU', 'How Might Kill Self'),
('CSSRS4FU', 'Any Intent to Act'),
('CSSRS5FU', 'Worked Out Details to Kill Self'),
('CSSRS5AFU', 'Intend to Carry Out Plan'),
('CSSRS6FU', 'Suicide Attempt'),
('CSSRS6AFU', 'Number of Suicide Attempts'),
('CSSRS7FU', 'Harm Self to End Life'),
('CSSRS8FU', 'Taken Steps Toward Suicide Attempt'),
('CSSRS9FU', 'Someone/Something Stopped Suicide Attempt'),
('CSSRS10FU', 'Stopped Self Before Ending'),
('NSSI1FU', 'Num of Times Harmed Self On-Purpose'),
('NSSI1AFU', 'Num of Times Harmed Self Past Week'),
('NSSI2FU___1', 'Cut or Carved Skin'),
('NSSI2FU___2', 'Picked at A Wound'),
('NSSI2FU___3', 'Hit Self'),
('NSSI2FU___4', 'Scraped Skin to Draw Blood'),
('NSSI2FU___5', 'Bitten Self'),
('NSSI2FU___6', 'Picked Areas of Body Drawing Blood'),
('NSSI2FU___7', 'Inserted Objects Under Skin/Nails'),
('NSSI2FU___8', 'Tattooed Self or Burnt Skin'),
('NSSI2FU___9', 'Pulled Out Hair'),
('NSSI2FU___10', 'Erased Skin to Draw Blood'),
('NSSI2FU___90', 'Other Things to Harm Self'),
('MHSU2FU', 'Ever Hospitalized'),
('MHSU2AFU', 'Number of Times Hospitalized'),
('MHSU1FU', 'Visited ED'),
('MHSU1AFU', 'Number of ER Visits'),
('MHSU1A1FU', 'ER Visits Not Hospitalized MH'),
('MHSU3FU', 'Taken Medication'),
('MHSU3AFU', 'Currently Taking Medication'),
('MHSU4FU', 'Obtained Therapy/Counseling'),
('MHSU4AFU', 'Currently Therapy/Counseling'),
('sex2', 'What sex were you born as?'),
('race2___1', 'How would you describe your race? Select all that apply: (choice=American Indian or Alaska Native)'),
('race2___2', 'How would you describe your race? Select all that apply: (choice=Asian)'),
('race2___3', 'How would you describe your race? Select all that apply: (choice=Black or African American)'),
('race2___4', 'How would you describe your race? Select all that apply: (choice=Native Hawaiian or Other Pacific Islander)'),
('race2___5', 'How would you describe your race? Select all that apply: (choice=White)'),
('race2___92', 'How would you describe your race? Select all that apply: (choice=Unknown)'),
('ethnicity2', 'What is your ethnicity?'),
('schoolgrade2', 'What grade are you in school?'),
('mothereducation2', 'How much school has your mother / stepmother completed?'),
('fathereducation2', 'How much school has your father / stepfather completed?'),
('welfare2', 'Does your family currently receive public assistance (i.e., food stamps, Medicaid)?'),
('fcs1', 'How much do people in your family understand you?'),
('fcs2', 'How much does your family pay attention to you?'),
('socialc1', 'I have friends I am really close to and trust completely.'),
('socialc2', 'Spending time with my friends is a big part of my life.'),
('schoolc1', 'You feel close to people at your school.'),
('schoolc2', 'You feel like you are part of your school.'),
('les1', 'Did the death of a close friend or family member occur in the last 3 months?'),
('les1a', 'If YES, how much did the event have a negative or positive impact on your life?'),
('les2', 'Did breaking up with a boyfriend / girlfriend occur in the last 3 months?'),
('les2a', 'If YES, how much did the event have a negative or positive impact on your life?'),
('les3', 'Were you suspended / expelled from school or arrested in the last 3 months?'),
('les3a', 'If YES, how much did the event have a negative or positive impact on your life?'),
('les4', 'Were your parents separated or divorced in the last 3 months?'),
('les4a', 'If YES, how much did the event have a negative or positive impact on your life?'),
('pds1', 'What sex were you born as?'),
('pds2', 'About the growth of body hair (body hair means underarm and pubic hair). Would you say that your body hair has:'),
('pds3', 'Have you noticed a deepening of your voice?'),
('pds4', 'Have you begun to grow hair on your face?'),
('pds5', 'Have your breasts begun to grow?'),
('pds6', 'Have you begun to menstruate?'),
('promis1', 'In the past 7 days, my sleep quality was:'),
('promis2', 'In the past 7 days, my sleep was refreshing.'),
('promis3', 'In the past 7 days, I had a problem with my sleep.'),
('promis4', 'In the past 7 days, I had difficulty falling asleep.'),
('mcq1ampm', 'AM or PM?'),
('mcq2ampm', 'AM or PM?'),
('mcq3ampm', 'AM or PM?'),
('mcq3alarm', 'On workdays / school days, do you wake up with an alarm?'),
('mcq4ampm', 'AM or PM?'),
('mcq5ampm', 'AM or PM?'),
('mcq6ampm', 'AM or PM?'),
('mcq6alarm', 'On free days (weekends), do you wake up with an alarm?'),
('asq1', 'In the past few weeks, have you wished you were dead?'),
('asq2', 'In the past few weeks, have you felt that you or your family would be better off if you were dead?'),
('asq3', 'In the past week, have you been having thoughts about killing yourself?'),
('asq4', 'Have you ever tried to kill yourself?'),
('cssrs1', 'Have you ever in your life wished you were dead or wished you could go to sleep and not wake up?'),
('cssrs1a', 'In the past month, have you wished you were dead or wished you could go to sleep and not wake up?'),
('cssrs2', 'Have you ever in your life had any thoughts of killing yourself?'),
('cssrs2a', 'In the past month, have you had any thoughts of killing yourself?'),
('cssrs2b', 'In the past 24 hours, have you had any thoughts of killing yourself?'),
('cssrs3', 'Have you ever in your life thought about how you might kill yourself?'),
('cssrs3a', 'In the past month, have you thought about how you might kill yourself?'),
('cssrs4', 'Have you ever in your life had these thoughts and had any intent to act on them?'),
('cssrs4a', 'In the past month, have you had these thoughts and had any intent to act on them?'),
('cssrs5', 'Have you ever in your life started to work out or have you worked out the details of how to kill yourself?'),
('cssrs5a', 'In the past month, have you started to work out or have you worked out the details of how to kill yourself?'),
('cssrs5b', 'Did you ever intend to carry out this plan?'),
('cssrs5c', 'In the past month, did you intend to carry out this plan?'),
('cssrs6', 'Have you ever in your life made a suicide attempt? Examples: swallowed any pills, tried to shoot yourself, cut yourself with wish to die, hang yourself'),
('cssrs6a', 'If YES, how many times in your life?'),
('cssrs6b', 'In the past month, have you made a suicide attempt? Examples: swallowed any pills, tried to shoot yourself, cut yourself with wish to die, hang yourself'),
('cssrs6c', 'In the past 24 hours, have you made a suicide attempt? Examples: swallowed any pills, tried to shoot yourself, cut yourself with wish to die, hang yourself'),
('cssrs7', 'Have you ever in your life tried to harm yourself because you were at least partly trying to end your life? Examples: swallowed any pills, tried to shoot yourself, cut yourself with wish to die, hang yourself'),
('cssrs7a', 'If YES, how many times in your life?'),
('cssrs7b', 'In the past month, have you tried to harm yourself because you were at least partly trying to end your life? Examples: swallowed any pills, tried to shoot yourself, cut yourself with wish to die, hang yourself'),
('cssrs7c', 'In the past 24 hours, have you tried to harm yourself because you were at least partly trying to end your life? Examples: swallowed any pills, tried to shoot yourself, cut yourself with wish to die, hang yourself'),
('cssrs8', 'Have you ever in your life taken any steps toward making a suicide attempt or preparing to kill yourself? Examples: saving pills, getting a gun, giving your things away, writing a suicide note'),
('cssrs8a', 'In the past month, have you taken any steps toward making a suicide attempt or preparing to kill yourself? Examples: saving pills, getting a gun, giving your things away, writing a suicide note'),
('cssrs9', 'Have you ever in your life started to do something to end your life but someone or something stopped you before you did anything?'),
('cssrs9a', 'In the past month, have you started to do something to end your life but someone or something stopped you before you did anything?'),
('cssrs10', 'Have you ever in your life started to do something to end your life but stopped yourself before you actually did anything? Examples: took out pills but did not swallow any, held a gun but changed your mind, went to the roof but did not jump'),
('cssrs10a', 'In the past month, have you started to do something to end your life but stopped yourself before you actually did anything? Examples: took out pills but did not swallow any, held a gun but changed your mind, went to the roof but did not jump'),
('sic1', 'When you have suicidal thoughts, how long do they last?'),
('sic2', 'How likely are you to act on your suicidal thoughts?'),
('sic3a', 'When I have suicidal thoughts, it is hard to think about other things.'),
('sic3b', 'My suicidal thoughts repeat over and over in my head.'),
('sic3c', 'When my suicidal thoughts persist, it is hard to resist acting on them.'),
('cssrsbs1DAY', 'What is the day of your most recent suicide attempt? (relative to screening date)'),
('cssrsbs2___1', 'Which method(s) did you use during your most recent suicide attempt? Select all that apply: (choice=Pills or other medicine (prescribed or over-the-counter))'),
('cssrsbs2___2', 'Which method(s) did you use during your most recent suicide attempt? Select all that apply: (choice=Alcohol, chemicals, or other drugs)'),
('cssrsbs2___3', 'Which method(s) did you use during your most recent suicide attempt? Select all that apply: (choice=Cutting or piercing)'),
('cssrsbs2___4', 'Which method(s) did you use during your most recent suicide attempt? Select all that apply: (choice=Drowning)'),
('cssrsbs2___5', 'Which method(s) did you use during your most recent suicide attempt? Select all that apply: (choice=Jumping)'),
('cssrsbs2___6', 'Which method(s) did you use during your most recent suicide attempt? Select all that apply: (choice=Firearm)'),
('cssrsbs2___7', 'Which method(s) did you use during your most recent suicide attempt? Select all that apply: (choice=Hanging or car exhaust)'),
('cssrsbs2___90', 'Which method(s) did you use during your most recent suicide attempt? Select all that apply: (choice=Other)'),
('nssi1', 'In the past 12 months, have you ever harmed or hurt your body on purpose, such as cutting or burning your skin, or hitting yourself, without wanting to die?'),
('nssi1a', 'In the past week, have you ever harmed or hurt your body on purpose, such as cutting or burning your skin, or hitting yourself, without wanting to die?'),
('nssi2___1', 'Over the last 12 months, which methods have you used to hurt yourself? Select all that apply: (choice=Cutting or carving on skin)'),
('nssi2___2', 'Over the last 12 months, which methods have you used to hurt yourself? Select all that apply: (choice=Picking at a wound)'),
('nssi2___3', 'Over the last 12 months, which methods have you used to hurt yourself? Select all that apply: (choice=Hitting self)'),
('nssi2___4', 'Over the last 12 months, which methods have you used to hurt yourself? Select all that apply: (choice=Scraping skin to draw blood)'),
('nssi2___5', 'Over the last 12 months, which methods have you used to hurt yourself? Select all that apply: (choice=Biting self)'),
('nssi2___6', 'Over the last 12 months, which methods have you used to hurt yourself? Select all that apply: (choice=Picking areas of the body to the point of drawing blood)'),
('nssi2___7', 'Over the last 12 months, which methods have you used to hurt yourself? Select all that apply: (choice=Inserting objects under skin or nails)'),
('nssi2___8', 'Over the last 12 months, which methods have you used to hurt yourself? Select all that apply: (choice=Tattooing self, burning skin)'),
('nssi2___9', 'Over the last 12 months, which methods have you used to hurt yourself? Select all that apply: (choice=Pulling out ones own hair)'),
('nssi2___10', 'Over the last 12 months, which methods have you used to hurt yourself? Select all that apply: (choice=Erasing skin to draw blood)'),
('nssi2___90', 'Over the last 12 months, which methods have you used to hurt yourself? Select all that apply: (choice=Other)'),
('pvp1', 'How often have you been bullied in school this term?'),
('pvp2', 'How often have you taken part in bullying other students in school this term?'),
('pvp3', 'How often have you been bullied away from school property this term?'),
('pvp4', 'How often have you taken part in bullying other students away from school property this term?'),
('hi1', 'In the past month, have you had any thoughts about wanting to kill someone else?'),
('hi2', 'Do you currently have any intent or plan to kill someone?'),
('phq91', 'Little interest or pleasure in doing things.'),
('phq92', 'Feeling down, depressed, or hopeless.'),
('phq93', 'Trouble falling or staying asleep, or sleeping too much.'),
('phq94', 'Feeling tired or having little energy.'),
('phq95', 'Poor appetite or overeating.'),
('phq96', 'Feeling bad about yourself - or that you are a failure or have let yourself or your family down.'),
('phq97', 'Trouble concentrating on things, such as reading or watching television.'),
('phq98', 'Moving or speaking so slowly that other people could have noticed, or the opposite, being so fidgety or restless that you have been moving around a lot more than usual.'),
('phq99', 'Thoughts that you would be better off dead or of hurting yourself in some way.'),
('phq10', 'Over the last two weeks, how hard has it been for you to do what you need to do and get along with others?'),
('hmfq', 'I thought there was nothing good for me in the future.'),
('ipas1', 'Over the past 6 months, have you had times when you became angry and enraged with others in a way that was out-of-control or inappropriate?'),
('ipas1a', 'How many times has this happened in the past 3 months?'),
('ipas1b1', 'During these times, have you verbally attacked someone?'),
('ipas1b2', 'During these times, have you thrown things or destroyed objects?'),
('ipas1b3', 'During these times, have you physically attacked someone?'),
('upps1', 'When I feel rejected, I will often say things that I wish I had not.'),
('upps2', 'It is hard for me to not act on my feelings.'),
('upps3', 'I often make matters worse because I act without thinking when I am upset.'),
('upps4', 'Sometimes I do impulsive things that I wish I had not.'),
('yrbs1', 'During the past 12 months, how many times were you in a physical fight?'),
('yrbs2', 'During your life, with how many people have you had sexual intercourse?'),
('yrbs3', 'During the past 30 days, did you take any diet pills, powders, or liquids without a doctors advice, or did you vomit or take laxatives to lose weight or to keep from gaining weight? (Do not count meal replacement products such as Slim Fast.)'),
('auditc1', 'How often do you have a drink with alcohol in it?'),
('auditc2', 'How many drinks with alcohol in it do you have on a day when you are drinking?'),
('auditc3', 'How often do you have six or more drinks at one time?'),
('dus1', 'In the past 3 months, how often have you used Cannabis (marijuana, weed, pot, grass, hash, etc.) in any inhaled or edible form (vaporized, edible food brownie, cookie, etc.), skin care (lotion, gel, salve, rub, oil, etc.), other (lollipop, lozenges, etc.)?'),
('dus2', 'In the past 3 months, how often have you used Prescription Stimulants (Ritalin, Concerta, Dexedrine, Adderall, diet pills, etc.)?'),
('dus2a', 'In the past 3 months, how often have you used Prescription Stimulants to get high, used more than prescribed, or that belonged to someone else?'),
('dus3', 'In the past 3 months, how often have you used Prescribed (pain medication) Opioids (fentanyl, oxycodone (OxyContin, Percocet), hydrocodone (Vicodin), methadone, buprenorphine (Suboxone), etc.)?'),
('dus3a', 'In the past 3 months, how often have you used Prescribed (pain medication) Opioids to get high, used more than prescribed, or that belonged to someone else?'),
('dus4', 'In the past 3 months, how often have you used Sedatives or sleeping pills (Valium, Serepax, Ativan, Xanax, Librium, Rohypnol, GHB, etc.)?'),
('dus4a', 'In the past 3 months, how often have you used Sedatives or sleeping pills to get high, used more than prescribed, or that belonged to someone else?'),
('dus5', 'In the past year, how often have you used an illegal drug other than marijuana (such as cocaine, inhalants, methamphetamine (speed, crystal), ecstasy, Molly, LSD, PCP, hallucinogens, mescaline (buttons, peyote), psilocybin (shrooms, magic mushrooms) Ketami'),
('bam1', 'Recently, I want to crawl out of my skin.'),
('bam2', 'Recently, I feel so stirred up inside I want to scream.'),
('bam3', 'Recently, I feel a lot of emotional turmoil in my gut.'),
('scaredc1', 'I am shy.'),
('scaredc2', 'People tell me that I worry too much.'),
('scaredc3', 'I am scared to go to school.'),
('scaredc4', 'I get really frightened for no reason at all.'),
('scaredc5', 'I am afraid to be alone in the house.'),
('disciv1', 'Have you ever been in a situation where you or someone close to you was going to be killed... or be hurt very badly?'),
('disciv2', 'Have you ever been threatened with a weapon?'),
('disciv3', 'People in my family have hit me so hard that it left me with bruises or marks.'),
('disciv4', 'Someone has tried to touch me in a sexual way or tried to make me touch them.'),
('siba1___1', 'What is your current gender identity? Select all that apply: (choice=Male)'),
('siba1___2', 'What is your current gender identity? Select all that apply: (choice=Female)'),
('siba1___3', 'What is your current gender identity? Select all that apply: (choice=Trans male / Trans boy)'),
('siba1___4', 'What is your current gender identity? Select all that apply: (choice=Trans female / Trans girl)'),
('siba1___5', 'What is your current gender identity? Select all that apply: (choice=Genderqueer or Gender non-conforming)'),
('siba1___90', 'What is your current gender identity? Select all that apply: (choice=Other / not listed above)'),
('siba2___1', 'Do you see yourself as: Select all that apply: (choice=Straight)'),
('siba2___2', 'Do you see yourself as: Select all that apply: (choice=Mostly straight)'),
('siba2___3', 'Do you see yourself as: Select all that apply: (choice=Bisexual)'),
('siba2___4', 'Do you see yourself as: Select all that apply: (choice=Mostly gay / lesbian)'),
('siba2___5', 'Do you see yourself as: Select all that apply: (choice=Gay / lesbian)'),
('siba2___6', 'Do you see yourself as: Select all that apply: (choice=Queer)'),
('siba2___7', 'Do you see yourself as: Select all that apply: (choice=Unlabeled)'),
('siba2___93', 'Do you see yourself as: Select all that apply: (choice=Not sure)'),
('siba3', 'During your life, with whom have you had sexual contact (not including unwanted experiences)?'),
('siba4', 'During your life, to whom have you had a romantic or sexual attraction?'),
('eat', 'I have gone on eating binges where I feel that I may not be able to stop.'),
('panas1', 'Joyful'),
('panas2', 'Cheerful'),
('panas3', 'Happy'),
('panas4', 'Lively'),
('panas5', 'Proud');

---------------------------------------------------------------------------------------------------

--Procedure to generate likelihood ratio table
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'GenerateLikelihoodRatios')
    DROP PROCEDURE GenerateLikelihoodRatios;
GO

CREATE PROCEDURE GenerateLikelihoodRatios
AS
BEGIN

	-- Drop the LikelihoodRatios table if it already exists
	DELETE FROM LikelihoodRatios;

    -- Declare variable to hold attribute code 
    DECLARE @Attribute NVARCHAR(255);
    SET @Attribute = 'CSSRS6FU'; -- Suicide Attempt

    -- Cursor to iterate through each attribute
    DECLARE @Code NVARCHAR(255), @Details NVARCHAR(255);
    DECLARE attribute_cursor CURSOR FOR 
    SELECT Code, Details FROM AttributeCodes;
    OPEN attribute_cursor;
    
    FETCH NEXT FROM attribute_cursor INTO @Code, @Details;

   WHILE @@FETCH_STATUS = 0
    BEGIN

		-- Dynamic SQL for calculating and inserting likelihood ratios for response = 1
DECLARE @Sql NVARCHAR(MAX) = N'INSERT INTO LikelihoodRatios (AttributeCode, AttributeDetails, Response, LikelihoodRatio)
SELECT ''' + @Code + ''', ''' + @Details + ''', 1,
(CAST(SUM(CASE WHEN ' + @Attribute + ' = 1 AND ' + @Code + ' = 1 THEN 1.0 ELSE 0 END) AS FLOAT) /
    NULLIF(SUM(CASE WHEN ' + @Code + ' = 1 THEN 1.0 ELSE 0 END), 0)) /
(NULLIF(CAST(SUM(CASE WHEN ' + @Attribute + ' = 0 AND ' + @Code + ' = 1 THEN 1.0 ELSE 0 END) AS FLOAT), 0) /
    NULLIF(SUM(CASE WHEN ' + @Code + ' = 1 THEN 1.0 ELSE 0 END), 0)) AS LikelihoodRatio
FROM FilterYouthJoinTable;';
EXEC sp_executesql @Sql;


        -- Dynamic SQL for calculating and inserting likelihood ratios for response = 0
SET @Sql = N'INSERT INTO LikelihoodRatios (AttributeCode, AttributeDetails, Response, LikelihoodRatio)
SELECT ''' + @Code + ''', ''' + @Details + ''', 0,
(CAST(SUM(CASE WHEN ' + @Attribute + ' = 1 AND ' + @Code + ' = 0 THEN 1.0 ELSE 0 END) AS FLOAT) /
    NULLIF(SUM(CASE WHEN ' + @Code + ' = 0 THEN 1.0 ELSE 0 END), 0)) /
(NULLIF(CAST(SUM(CASE WHEN ' + @Attribute + ' = 0 AND ' + @Code + ' = 0 THEN 1.0 ELSE 0 END) AS FLOAT), 0) /
    NULLIF(SUM(CASE WHEN ' + @Code + ' = 0 THEN 1.0 ELSE 0 END), 0)) AS LikelihoodRatio
FROM FilterYouthJoinTable;';
EXEC sp_executesql @Sql;


        FETCH NEXT FROM attribute_cursor INTO @Code, @Details;
    END

    CLOSE attribute_cursor;
    DEALLOCATE attribute_cursor;
END;
GO
EXEC GenerateLikelihoodRatios;

------------------------------------------------------------------------------------------------

-- Display LikelihoodRatios table
SELECT * FROM LikelihoodRatios ORDER BY LikelihoodRatio DESC;

-- Display FilterYouthJoinTable table
SELECT * FROM FilterYouthJoinTable;

-- Display ResponseTable table
SELECT * FROM ResponseTable;


