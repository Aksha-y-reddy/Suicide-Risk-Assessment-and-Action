
---------------------------------------------------------------------------------------------------

-- Database selection (Delete/edit)
USE DAEN690

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
('PHQ10FU', 'Are you finding it difficult to get along with others lately?'),
('PHQ91FU', 'Have you been feeling down, depressed, or hopeless lately?'),
('PHQ92FU', 'Are you feeling tired or lacking energy lately?'),
('PHQ93FU', 'Are you experiencing drastic changes in your appetite, such as poor appetite or overeating, that are affecting your daily life?'),
('PHQ94FU', 'Have you experienced persistent thoughts of hurting yourself or suicidal ideation recently?'),
('PHQ95FU', 'Are you experiencing trouble with sleep that is significantly impacting your mental health and well-being?'),
('PHQ96FU', 'Are you finding it difficult to focus or concentrate on tasks lately?'),
('PHQ97FU', 'Are you finding yourself moving slowly or feeling restless lately?'),
('PHQ98FU', 'Have you been experiencing little interest or pleasure in activities you once enjoyed?'),
('PHQ99FU', 'Have you been feeling particularly down on yourself lately, to the point where you''ve had thoughts of self-harm or suicide?'),
('HMFQFU', 'Are you feeling like there is nothing good in your future?'),
('AUDITC1FU', 'Are you consuming alcohol as a coping mechanism for dealing with thoughts of self-harm or suicide?'),
('AUDITC2FU', 'How many alcoholic drinks do you typically consume in a week?'),
('AUDITC3FU', 'Have you ever consumed six or more drinks at once as a coping mechanism or to numb emotional pain?'),
('CSSRS1FU', 'Have you ever felt like you just wanted to not wake up in the morning?'),
('CSSRS2FU', 'Have you been experiencing persistent thoughts of killing yourself recently?'),
('CSSRS3FU', 'Are you currently experiencing thoughts of self-harm or suicide?'),
('CSSRS4FU', 'Do you ever feel like you have thoughts of self-harm or suicide, or have any intent to act on those thoughts?'),
('CSSRS5FU', 'Have you ever found yourself planning out the details of how you would take your own life?'),
('CSSRS5AFU', 'Do you currently have a plan in place to harm yourself or end your life?'),
('CSSRS6FU', 'Have you ever had thoughts of harming yourself or attempting suicide?'),
('CSSRS6AFU', 'Have you ever attempted suicide before?'),
('CSSRS7FU', 'Have you ever thought about harming yourself as a way to end your life?'),
('CSSRS8FU', 'Have you ever taken any steps toward attempting suicide?'),
('CSSRS9FU', 'Have you ever been in a situation where someone or something stopped you from attempting suicide? Share your experience.'),
('CSSRS10FU', 'Have you ever felt like ending your own life but stopped yourself before going through with it?'),
('NSSI1FU', 'How many times have you intentionally harmed yourself in the past?'),
('NSSI1AFU', 'How many times have you harmed yourself in the past week?'),
('NSSI2FU___1', 'Have you ever engaged in self-harm behaviors such as cutting or carving your skin?'),
('NSSI2FU___2', 'Have you ever felt like you were picking at a wound, unable to stop the pain or find relief?'),
('NSSI2FU___3', 'Have you ever intentionally harmed yourself in any way?'),
('NSSI2FU___4', 'Have you ever intentionally scraped your skin to draw blood as a way to cope with emotional pain or distress?'),
('NSSI2FU___5', 'Have you ever felt like you are your own worst enemy, constantly feeling "bitten" by your own thoughts or actions?'),
('NSSI2FU___6', 'What areas of your body do you typically choose to draw blood from when engaging in self-harm behaviors?'),
('NSSI2FU___7', 'Have you ever intentionally inserted objects under your skin or nails as a way to harm yourself?'),
('NSSI2FU___8', 'Have you ever considered using tattoos or self-harm methods like burning your skin as a way to cope with emotional pain or distress?'),
('NSSI2FU___9', 'Have you ever felt so overwhelmed that you''ve resorted to pulling out your hair as a coping mechanism?'),
('NSSI2FU___10', 'Have you ever felt compelled to self-harm or considered suicide as a way to cope with emotional pain? Share your thoughts and experiences with us.'),
('NSSI2FU___90', 'Have you ever engaged in any other harmful behaviors towards yourself, aside from what is traditionally considered self-harm?'),
('MHSU2FU', 'Have you ever been hospitalized for mental health reasons?'),
('MHSU2AFU', 'How many times have you been hospitalized for mental health concerns or suicidal ideation?'),
('MHSU1FU', 'Have you ever visited the Emergency Department due to thoughts of suicide or self-harm?'),
('MHSU1AFU', 'How many times have you visited the emergency room due to thoughts of self-harm or suicide in the past year?'),
('MHSU1A1FU', 'Have you visited the Emergency Room for mental health concerns without being hospitalized?'),
('MHSU3FU', 'Have you taken any medication for your mental health recently?'),
('MHSU3AFU', 'Are you currently taking any medication for mental health conditions?'),
('MHSU4FU', 'Have you obtained therapy or counseling for any mental health concerns, including thoughts of self-harm or suicide?'),
('MHSU4AFU', 'Are you currently seeking therapy or counseling for any mental health concerns, including thoughts of self-harm or suicide?'),
('sex2', 'Have you ever experienced feelings of hopelessness or thoughts of self-harm related to your gender identity or assigned sex at birth?'),
('race2___1', 'Have you ever identified as American Indian or Alaska Native?'),
('race2___2', 'Are you of Asian descent?'),
('race2___3', 'Have you ever experienced feelings of hopelessness or worthlessness due to your racial identity as a Black or African American individual?'),
('race2___4', 'Are you of Native Hawaiian or Other Pacific Islander descent?'),
('race2___5', 'Have you ever felt like your race has influenced your thoughts or feelings about suicide in any way?'),
('race2___92', 'Can you please select all the options that apply to describe your race, including ''Unknown'', to help us better understand your background and experiences?'),
('ethnicity2', 'Have you ever experienced feelings of hopelessness or thoughts of self-harm or suicide based on your ethnicity?'),
('schoolgrade2', 'Are you feeling overwhelmed or struggling with your mental health?'),
('mothereducation2', 'How much school has your mother/stepmother completed? Are you or someone you know currently feeling overwhelmed or having thoughts of self-harm?'),
('fathereducation2', 'What is the highest level of education your father / stepfather has completed?'),
('welfare2', 'Have you or any family members ever relied on public assistance such as food stamps or Medicaid?'),
('fcs1', 'Do you feel like your family members understand you and your struggles?'),
('fcs2', 'Have you ever felt like your family doesn''t pay enough attention to you?'),
('socialc1', 'Do you feel like you can talk openly with your close friends about any struggles or thoughts you may be having?'),
('socialc2', 'How often do you find yourself isolating from friends and loved ones when you''re feeling overwhelmed or down?'),
('schoolc1', 'Do you feel a strong sense of connection with others at your school, or do you often feel isolated and alone?'),
('schoolc2', 'Do you feel disconnected or isolated from your school community?'),
('les1', 'Have you experienced the loss of a close friend or family member within the last 3 months?'),
('les1a', 'Did the event have a negative impact on your life to the extent that you have had thoughts of harming yourself or ending your life?'),
('les2', 'Have you experienced a recent breakup in the last 3 months?'),
('les2a', 'Did the event have a significant negative impact on your life, to the point where you have had thoughts of harming yourself or ending your life?'),
('les3', 'Have you experienced any legal or disciplinary issues at school or with the law in the past 3 months?'),
('les3a', 'Did the event have a significant negative impact on your life to the point where you have experienced thoughts of self-harm or suicide?'),
('les4', 'Have you experienced your parents separating or divorcing in the last 3 months?'),
('les4a', 'Did the event have a negative impact on your life to the point where you have felt or are currently feeling suicidal?'),
('pds1', 'Are you currently experiencing any feelings of hopelessness or thoughts of self-harm?'),
('pds2', 'Have you noticed any significant changes in the growth of your body hair recently?'),
('pds3', 'Have you noticed any changes in your voice lately, such as it getting deeper or more hoarse?'),
('pds4', 'Are you experiencing any thoughts of self-harm or suicide?'),
('pds5', 'Are you experiencing any changes in your body, such as breasts beginning to grow, that are causing you distress or concern?'),
('pds6', 'Are you currently experiencing thoughts of harming yourself or suicidal ideation?'),
('promis1', 'How would you rate your sleep quality over the past week on a scale of 1 to 10?'),
('promis2', 'How would you rate the quality of your sleep in the past week?'),
('promis3', 'Have you experienced any thoughts of harming yourself or suicide in the past 7 days due to your sleep problems?'),
('promis4', 'Have you experienced any thoughts of self-harm or suicide in the past week due to difficulty falling asleep?'),
('mcq1time', 'What time do you typically go to bed on workdays/school days?'),
('mcq1ampm', 'Are you feeling suicidal, AM or PM?'),
('mcq2time', 'At what time do you typically get ready to fall asleep on workdays / school days?'),
('mcq2ampm', 'Are you experiencing any thoughts of self-harm or suicide right now? AM or PM?'),
('mcq3time', 'At what time do you typically wake up on workdays / school days?'),
('mcq3ampm', 'Are you currently feeling suicidal? AM or PM?'),
('mcq3alarm', 'Do you struggle to find motivation to wake up in the morning on workdays or school days?'),
('mcq4time', 'What time do you typically go to bed on weekends?'),
('mcq4ampm', 'Are you feeling distressed or having thoughts of harming yourself, either in the morning or evening?'),
('mcq5time', 'What time do you typically get ready to fall asleep on weekends?'),
('mcq5ampm', 'What time of day do you find yourself feeling the most overwhelmed or hopeless? AM or PM?'),
('mcq6time', 'What time do you typically wake up on your days off?'),
('mcq6ampm', 'Are you experiencing thoughts of self-harm or suicide, AM or PM?'),
('mcq6alarm', 'Do you find it difficult to get out of bed on weekends, even with an alarm?'),
('asq1', 'Have you experienced thoughts of wanting to end your life in the past few weeks?'),
('asq2', 'Have you or your family experienced thoughts of being better off dead in the past few weeks?'),
('asq3', 'Have you found yourself having thoughts about taking your own life in the past week?'),
('asq4', 'Have you ever experienced thoughts of harming yourself or ending your own life?'),
('cssrs1', 'Have you ever experienced thoughts of wanting to die or wanting to never wake up again?'),
('cssrs1a', 'Have you experienced any thoughts of wanting to die or wishing you could just go to sleep and not wake up in the past month?'),
('cssrs2', 'Have you ever experienced thoughts of suicide at any point in your life?'),
('cssrs2a', 'Have you experienced any thoughts of killing yourself in the past month?'),
('cssrs2b', 'Have you had any thoughts of killing yourself in the last day?'),
('cssrs3', 'Have you ever experienced thoughts of suicide or considered harming yourself?'),
('cssrs3a', 'Have you recently considered thoughts of harming or killing yourself within the past month?'),
('cssrs4', 'Have you ever experienced thoughts of suicide and considered acting on them at any point in your life?'),
('cssrs4a', 'Have you had any thoughts of self-harm or suicide in the past month, and have you had any intent to act on them?'),
('cssrs5', 'Have you ever made a plan or considered the details of how you would end your life?'),
('cssrs5a', 'Have you recently begun exercising, or have you been contemplating the details of how to end your life in the past month?'),
('cssrs5b', 'Have you ever made plans to harm yourself or carry out suicidal thoughts?'),
('cssrs5c', 'Have you had any thoughts or plans related to self-harm or suicide in the past month?'),
('cssrs6', 'Have you ever in your life made a suicide attempt, such as swallowing pills, trying to shoot yourself, cutting yourself with the wish to die, or hanging yourself?'),
('cssrs6a', 'Have you ever had thoughts of ending your own life? If YES, how many times in your life?'),
('cssrs6b', 'Have you made any suicide attempts in the past month, such as swallowing pills, trying to shoot yourself, cutting yourself with the intention to die, or attempting to hang yourself?'),
('cssrs6c', 'Have you engaged in any behaviors in the last 24 hours that indicate a desire to harm yourself or end your life, such as taking pills, self-harm with the intent to die, or attempting to use a weapon to harm yourself?'),
('cssrs7', 'Have you ever engaged in any behavior with the intention of ending your life, such as swallowing pills, attempting to shoot yourself, cutting yourself with the wish to die, or hanging yourself?'),
('cssrs7a', 'Have you ever experienced thoughts of suicide? If yes, how many times in your life?'),
('cssrs7b', 'Have you engaged in any behavior in the past month that could be considered self-harm with the intention of ending your life, such as swallowing pills, attempting to shoot yourself, cutting yourself with the wish to die, or trying to hang yourself?'),
('cssrs7c', 'In the past day, have you engaged in any activities with the intention of ending your life, such as taking pills, attempting to harm yourself, or contemplating suicide?'),
('cssrs8', 'Have you ever taken any steps towards making a suicide attempt, such as saving pills, getting a gun, giving away your things, or writing a suicide note?'),
('cssrs8a', 'Have you taken any steps in the past month towards making a suicide attempt or preparing to kill yourself, such as saving pills, obtaining a weapon, giving away belongings, or writing a suicide note?'),
('cssrs9', 'Have you ever been in a situation where you started to take actions to end your life, but were stopped before you could do anything?'),
('cssrs9a', 'Have you experienced a situation in the past month where you started to take action to end your life, but someone or something intervened before you were able to do anything?'),
('cssrs10', 'Have you ever started to take actions to end your life but stopped yourself before going through with it, such as taking out pills but not swallowing any, holding a gun but changing your mind, or going to the roof but not jumping?'),
('cssrs10a', 'Have you experienced a situation in the past month where you started to take actions to end your life but stopped yourself before actually going through with it? Examples include taking out pills but not swallowing any, holding a gun but changing your mind, or going to a high place but not jumping.'),
('sic1', 'Have you experienced persistent suicidal thoughts, and if so, how long do they typically last for you?'),
('sic2', 'How often do you find yourself contemplating acting on your suicidal thoughts?'),
('sic3a', 'Have you ever experienced difficulty focusing on thoughts other than suicidal thoughts when you are in that state?'),
('sic3b', 'Do you find yourself experiencing repetitive suicidal thoughts that you can''t seem to shake off?'),
('sic3c', 'Have you ever experienced persistent suicidal thoughts that are difficult to resist acting on?'),
('cssrsbs1DAY', 'When was your most recent suicide attempt in relation to the screening date?'),
('cssrsbs2___1', 'Have you ever attempted suicide by taking pills or other medicine, whether prescribed or over-the-counter?'),
('cssrsbs2___2', 'Are you able to recall which method(s) you used during your most recent suicide attempt? Please select all that apply: Alcohol, chemicals, or other drugs. Your response will help us better understand your situation and offer appropriate support.'),
('cssrsbs2___3', 'Have you ever attempted suicide by cutting or piercing yourself?'),
('cssrsbs2___4', 'Have you ever attempted suicide by drowning?'),
('cssrsbs2___5', 'Have you ever attempted suicide by jumping?'),
('cssrsbs2___6', 'Have you ever attempted suicide using a firearm?'),
('cssrsbs2___7', 'Have you ever attempted suicide using methods such as hanging or car exhaust?'),
('cssrsbs2___90', 'Can you please share which method(s) you used during your most recent suicide attempt, if any? Select all that apply or specify ''Other.'' Your response will help us better understand and support you.'),
('nssi1', 'Have you intentionally harmed or hurt your body in the past year, such as cutting, burning, or hitting yourself, even if you did not want to die?'),
('nssi1a', 'Have you engaged in any self-harming behaviors, such as cutting or burning your skin, hitting yourself, or any other actions that caused harm to your body, in the past week?'),
('nssi2___1', 'Have you engaged in cutting or carving on your skin to hurt yourself in the past year?'),
('nssi2___2', 'Have you engaged in picking at a wound as a method to hurt yourself in the past 12 months?'),
('nssi2___3', 'Have you engaged in hitting yourself as a method of self-harm within the past year?'),
('nssi2___4', 'Have you engaged in scraping your skin to draw blood as a method of self-harm within the last 12 months?'),
('nssi2___5', 'Have you ever engaged in biting yourself as a way to hurt yourself in the past year?'),
('nssi2___6', 'Have you engaged in picking areas of your body to the point of drawing blood in the last 12 months?'),
('nssi2___7', 'Have you inserted objects under your skin or nails to hurt yourself in the last 12 months?'),
('nssi2___8', 'Have you engaged in any self-harming behaviors such as tattooing yourself or burning your skin within the past year?'),
('nssi2___9', 'Have you engaged in pulling out your own hair as a method to hurt yourself within the last 12 months?'),
('nssi2___10', 'Have you engaged in any behaviors involving erasing skin to draw blood within the past 12 months?'),
('nssi2___90', 'Have you engaged in any self-harming behaviors in the past year that were not listed in the options provided?'),
('pvp1', 'Have you ever experienced bullying in school this term that has made you feel overwhelmed or hopeless?'),
('pvp2', 'Have you ever felt overwhelmed or distressed to the point of considering harming yourself after being involved in bullying other students at school this term?'),
('pvp3', 'Have you ever been bullied away from school property this term, and if so, how often has it happened?'),
('pvp4', 'Have you ever engaged in bullying behaviors towards other students off school property this term?'),
('hi1', 'Have you experienced any thoughts in the past month about wanting to harm or kill someone else?'),
('hi2', 'Do you ever feel like harming yourself or having thoughts of ending your own life?'),
('phq91', 'Have you been experiencing a lack of interest or pleasure in doing things lately?'),
('phq92', 'Are you experiencing thoughts of harming yourself or feeling like life is not worth living?'),
('phq93', 'Have you been experiencing trouble falling or staying asleep, or sleeping too much lately?'),
('phq94', 'Have you been feeling tired or lacking energy lately?'),
('phq95', 'Have you experienced a significant change in your appetite recently, either eating much less or much more than usual?'),
('phq96', 'Have you been experiencing feelings of worthlessness or failure that make you think about hurting yourself or ending your life?'),
('phq97', 'Have you been experiencing difficulty concentrating on activities like reading or watching television recently?'),
('phq98', 'Have you noticed any significant changes in your physical movements or behaviors lately, such as being unusually slow or restless compared to your usual self?'),
('phq99', 'Have you been experiencing any thoughts of wanting to harm yourself or thinking that you would be better off dead?'),
('phq10', 'How has your ability to cope with daily tasks and interact with others been affected in the past two weeks?'),
('hmfq', 'Do you ever feel like there is nothing good for you in the future?'),
('ipas1', 'Have you ever experienced moments of intense anger or rage towards others that felt overwhelming or inappropriate in the last 6 months?'),
('ipas1a', 'Have you experienced thoughts of suicide in the past 3 months?'),
('ipas1b1', 'Have you ever felt so overwhelmed that you thought about hurting yourself or ending your life during these difficult times?'),
('ipas1b2', 'Have you ever felt so overwhelmed that you''ve had the urge to throw things or destroy objects as a way of coping?'),
('ipas1b3', 'Have you ever felt so overwhelmed or distressed that you wanted to harm yourself or have had thoughts of suicide during these times?'),
('upps1', 'Have you ever found yourself saying things you later regret when feeling rejected?'),
('upps2', 'Have you ever struggled with feeling overwhelmed by your emotions to the point where you felt like you couldn''t control your actions?'),
('upps3', 'Have you ever found yourself making impulsive decisions when you''re upset, even if it ends up making matters worse? What strategies do you use to cope with strong emotions and prevent impulsive actions?'),
('upps4', 'Have you ever acted impulsively in a way that you later regretted?'),
('yrbs1', 'How has engaging in physical fights in the past year affected your mental health and well-being?'),
('yrbs2', 'Have you ever felt overwhelmed or struggled with thoughts of suicide after engaging in sexual intercourse with someone?'),
('yrbs3', 'Have you taken diet pills, powders, or liquids without a doctor''s advice, or have you vomited or taken laxatives within the past 30 days to lose weight or prevent weight gain?'),
('auditc1', 'Do you find yourself turning to alcohol as a way to cope with difficult emotions or thoughts?'),
('auditc2', 'How many drinks with alcohol do you typically consume on a drinking day?'),
('auditc3', 'Have you ever consumed six or more drinks at one time?'),
('dus1', 'In the past 3 months, have you used Cannabis (marijuana, weed, pot, grass, hash, etc.) in any form and experienced thoughts of self-harm or suicide?'),
('dus2', 'Have you experienced any thoughts of suicide or self-harm in the past 3 months while using Prescription Stimulants (Ritalin, Concerta, Dexedrine, Adderall, diet pills, etc.)?'),
('dus2a', 'Have you ever used Prescription Stimulants in the past 3 months to get high, used more than prescribed, or taken medication that belonged to someone else?'),
('dus3', 'Have you experienced any thoughts of self-harm or suicide in the past 3 months while using prescribed opioids like fentanyl, oxycodone, hydrocodone, methadone, or buprenorphine?'),
('dus3a', 'Have you used prescribed opioids in the past 3 months to get high, taken more than prescribed, or used opioids that belonged to someone else?'),
('dus4', 'Have you used any sedatives or sleeping pills such as Valium, Xanax, or Ativan in the past 3 months? If so, have you experienced any thoughts of self-harm or suicide during this time?'),
('dus4a', 'Have you used sedatives or sleeping pills to get high, used more than prescribed, or taken pills that belonged to someone else in the past 3 months? If so, have you had any thoughts of harming yourself or suicidal ideation during this time?'),
('dus5', 'In the past year, how often have you used an illegal drug other than marijuana, and have you experienced any thoughts of suicide during or after using these drugs?'),
('bam1', 'Have you been feeling like you want to crawl out of your skin recently?'),
('bam2', 'Have you been feeling overwhelmed and in need of release lately, to the point where you just want to scream?'),
('bam3', 'Have you been experiencing thoughts of self-harm or suicide along with the emotional turmoil in your gut recently?'),
('scaredc1', 'Are you feeling overwhelmed or isolated due to your shyness, to the point where you have thoughts of harming yourself?'),
('scaredc2', 'Do you ever feel overwhelmed by worry to the point where you''ve thought about harming yourself or ending your life?'),
('scaredc3', 'Are you feeling overwhelmed or scared to go to school?'),
('scaredc4', 'Do you ever find yourself feeling extremely frightened or anxious without a specific reason or trigger?'),
('scaredc5', 'Are you feeling overwhelmed or scared to be alone in the house?'),
('disciv1', 'Have you ever felt like you or someone close to you was in so much pain that you thought about ending it all?'),
('disciv2', 'Have you ever thought about using a weapon to harm yourself?'),
('disciv3', 'Have you ever experienced physical abuse from a family member that left visible bruises or marks on your body?'),
('disciv4', 'Have you ever experienced someone trying to touch you in a sexual way or make you touch them, and if so, how did it make you feel?'),
('siba1___1', 'Are you currently experiencing thoughts of self-harm or suicide?'),
('siba1___2', 'Are you currently experiencing any feelings of hopelessness or thoughts of self-harm or suicide?'),
('siba1___3', 'Are you experiencing any thoughts of self-harm or suicide?'),
('siba1___4', 'Are you currently experiencing any thoughts of self-harm or suicide? Your response will remain confidential and can help us provide you with the necessary support.'),
('siba1___5', 'Have you ever experienced feelings of hopelessness or thoughts of self-harm due to struggles related to your gender identity, especially if you identify as Genderqueer or Gender non-conforming?'),
('siba1___90', 'Have you experienced any thoughts of self-harm or suicide related to your gender identity or any other factors?'),
('siba2___1', 'Do you ever have thoughts of harming yourself or ending your own life?'),
('siba2___2', 'Do you ever have thoughts of self-harm or suicide?'),
('siba2___3', 'Have you ever experienced thoughts of self-harm or suicide and also identify as bisexual?'),
('siba2___4', 'Have you ever experienced thoughts of suicide or self-harm, especially in relation to your sexual orientation?'),
('siba2___5', 'Have you ever experienced thoughts of suicide or self-harm?'),
('siba2___6', 'Do you identify as Queer? If so, have you ever experienced thoughts of suicide or self-harm?'),
('siba2___7', 'Have you experienced thoughts of suicide or self-harm recently?'),
('siba2___93', 'Have you been experiencing feelings of hopelessness, worthlessness, or thoughts of self-harm recently?'),
('siba3', 'Have you ever engaged in sexual contact with someone as a way to cope with feelings of depression or hopelessness?'),
('siba4', 'Have you ever had romantic or sexual attraction towards someone that made you feel overwhelmed or distressed to the point where you considered harming yourself?'),
('eat', 'Have you ever felt out of control during eating binges to the point where you worry you may not be able to stop?'),
('panas1', 'What activities or thoughts bring you joy and fulfillment in your life currently?'),
('panas2', 'How do you typically cope with difficult situations when you are feeling cheerful?'),
('panas3', 'How would you describe your overall mood and happiness level right now?'),
('panas4', 'How do you typically cope with feelings of sadness or hopelessness when you''re feeling particularly lively?'),
('panas5', 'Are you feeling proud of your accomplishments or struggling with feelings of worthlessness?');

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


