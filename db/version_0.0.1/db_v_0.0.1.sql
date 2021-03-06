USE [TECH_ROM]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cu_detail_cu_detail]') AND parent_object_id = OBJECT_ID(N'[dbo].[detail]'))
ALTER TABLE [dbo].[detail] DROP CONSTRAINT [fk_cu_detail_cu_detail]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cu_permission_cu_user]') AND parent_object_id = OBJECT_ID(N'[dbo].[cu_permission]'))
ALTER TABLE [dbo].[cu_permission] DROP CONSTRAINT [fk_cu_permission_cu_user]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cu_permission_cu_program]') AND parent_object_id = OBJECT_ID(N'[dbo].[cu_permission]'))
ALTER TABLE [dbo].[cu_permission] DROP CONSTRAINT [fk_cu_permission_cu_program]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_object_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[object] DROP CONSTRAINT [DF_object_created_date]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_object_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[object] DROP CONSTRAINT [DF_object_active]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_object_order]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[object] DROP CONSTRAINT [DF_object_order]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_header_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[header] DROP CONSTRAINT [DF_cu_header_created_date]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_detail_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[detail] DROP CONSTRAINT [DF_detail_created_date]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_detail_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[detail] DROP CONSTRAINT [DF_cu_detail_active]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_detail_order]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[detail] DROP CONSTRAINT [DF_cu_detail_order]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_usuario_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_user] DROP CONSTRAINT [DF_cu_usuario_created_date]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_user_access_id_fk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_user] DROP CONSTRAINT [DF_cu_user_access_id_fk]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_user_person_id_fk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_user] DROP CONSTRAINT [DF_cu_user_person_id_fk]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_program_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_program] DROP CONSTRAINT [DF_cu_program_created_date]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_program_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_program] DROP CONSTRAINT [DF_cu_program_active]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_profile_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_profile] DROP CONSTRAINT [DF_cu_profile_created_date]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_profile_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_profile] DROP CONSTRAINT [DF_cu_profile_active]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_profile_order]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_profile] DROP CONSTRAINT [DF_cu_profile_order]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_permissions_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_permission] DROP CONSTRAINT [DF_cu_permissions_created_date]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_permission_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_permission] DROP CONSTRAINT [DF_cu_permission_active]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_password_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_password] DROP CONSTRAINT [DF_cu_password_created_date]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_message_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_message] DROP CONSTRAINT [DF_message_created_date]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_company_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_company] DROP CONSTRAINT [DF_cu_company_created_date]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_branch_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_branch] DROP CONSTRAINT [DF_cu_branch_created_date]
END

GO
/****** Object:  Index [uq_detail]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[detail]') AND name = N'uq_detail')
ALTER TABLE [dbo].[detail] DROP CONSTRAINT [uq_detail]
GO
/****** Object:  Index [uq_cu_user]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_user]') AND name = N'uq_cu_user')
ALTER TABLE [dbo].[cu_user] DROP CONSTRAINT [uq_cu_user]
GO
/****** Object:  Index [uq_cu_program]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_program]') AND name = N'uq_cu_program')
ALTER TABLE [dbo].[cu_program] DROP CONSTRAINT [uq_cu_program]
GO
/****** Object:  Index [uq_cu_profile]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_profile]') AND name = N'uq_cu_profile')
ALTER TABLE [dbo].[cu_profile] DROP CONSTRAINT [uq_cu_profile]
GO
/****** Object:  Index [uq_cu_permissions]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_permission]') AND name = N'uq_cu_permissions')
ALTER TABLE [dbo].[cu_permission] DROP CONSTRAINT [uq_cu_permissions]
GO
/****** Object:  Index [uq_cu_message]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_message]') AND name = N'uq_cu_message')
ALTER TABLE [dbo].[cu_message] DROP CONSTRAINT [uq_cu_message]
GO
/****** Object:  Index [uq_cu_company]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_company]') AND name = N'uq_cu_company')
ALTER TABLE [dbo].[cu_company] DROP CONSTRAINT [uq_cu_company]
GO
/****** Object:  Index [uq_cu_branch]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_branch]') AND name = N'uq_cu_branch')
ALTER TABLE [dbo].[cu_branch] DROP CONSTRAINT [uq_cu_branch]
GO
/****** Object:  Table [dbo].[object]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[object]') AND type in (N'U'))
DROP TABLE [dbo].[object]
GO
/****** Object:  Table [dbo].[header]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[header]') AND type in (N'U'))
DROP TABLE [dbo].[header]
GO
/****** Object:  Table [dbo].[detail]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detail]') AND type in (N'U'))
DROP TABLE [dbo].[detail]
GO
/****** Object:  Table [dbo].[cu_user]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_user]') AND type in (N'U'))
DROP TABLE [dbo].[cu_user]
GO
/****** Object:  Table [dbo].[cu_program]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_program]') AND type in (N'U'))
DROP TABLE [dbo].[cu_program]
GO
/****** Object:  Table [dbo].[cu_profile]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_profile]') AND type in (N'U'))
DROP TABLE [dbo].[cu_profile]
GO
/****** Object:  Table [dbo].[cu_permission]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_permission]') AND type in (N'U'))
DROP TABLE [dbo].[cu_permission]
GO
/****** Object:  Table [dbo].[cu_password]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_password]') AND type in (N'U'))
DROP TABLE [dbo].[cu_password]
GO
/****** Object:  Table [dbo].[cu_message]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_message]') AND type in (N'U'))
DROP TABLE [dbo].[cu_message]
GO
/****** Object:  Table [dbo].[cu_company]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_company]') AND type in (N'U'))
DROP TABLE [dbo].[cu_company]
GO
/****** Object:  Table [dbo].[cu_branch]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_branch]') AND type in (N'U'))
DROP TABLE [dbo].[cu_branch]
GO
/****** Object:  UserDefinedFunction [dbo].[split]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[split]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[split]
GO
/****** Object:  UserDefinedFunction [dbo].[get_row_message]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_row_message]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[get_row_message]
GO
/****** Object:  UserDefinedFunction [dbo].[get_hash]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_hash]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[get_hash]
GO
/****** Object:  UserDefinedFunction [dbo].[get_detail]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_detail]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[get_detail]
GO
/****** Object:  UserDefinedFunction [dbo].[cleaner_str]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cleaner_str]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[cleaner_str]
GO
/****** Object:  StoredProcedure [dbo].[revoke_permision_program]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[revoke_permision_program]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[revoke_permision_program]
GO
/****** Object:  StoredProcedure [dbo].[is_access]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[is_access]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[is_access]
GO
/****** Object:  StoredProcedure [dbo].[get_programs]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_programs]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[get_programs]
GO
/****** Object:  StoredProcedure [dbo].[change_pass]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[change_pass]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[change_pass]
GO
/****** Object:  StoredProcedure [dbo].[add_user]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[add_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[add_user]
GO
/****** Object:  StoredProcedure [dbo].[add_permision_program]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[add_permision_program]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[add_permision_program]
GO
/****** Object:  StoredProcedure [dbo].[add_permision_program]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[add_permision_program]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Hermy Garcia Feliz
-- Create date: 21/01/2015
-- Description:	adiciona un permiso (programa -> usuario)
-- =============================================
CREATE PROCEDURE [dbo].[add_permision_program]
	@prm_user_id_pk INT = 8 
  , @prm_program_name VARCHAR(20) = ''SCG601''
  , @prm_creater_id_pk INT = 1 
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @var_program_id_pk INT = 0

	SELECT @var_program_id_pk = [CP].[program_id_pk]
	FROM [dbo].[cu_program] AS CP
	WHERE [CP].[name] = @prm_program_name


	IF EXISTS (SELECT [CP].[program_id_fk] 
	           FROM [dbo].[cu_permission] AS CP
	           WHERE [CP].[user_id_fk] = @prm_user_id_pk AND [CP].[program_id_fk] = @var_program_id_pk )
    BEGIN
    	UPDATE [dbo].[cu_permission]
		   SET [active] = ''1''
		     , [modified_by] = @prm_creater_id_pk
			 , [modified_date] = GETDATE()
		   WHERE [user_id_fk] = @prm_user_id_pk AND [program_id_fk] = @var_program_id_pk 
    END
    ELSE 
	BEGIN
		INSERT INTO [dbo].[cu_permission]
		        ( [user_id_fk]
		        , [program_id_fk]
		        , [ref_information]
		        , [active]
		        , [created_by]
		        , [created_date]
		        )
				SELECT @prm_user_id_pk user_id_pk
				  , @var_program_id_pk programa_id_pk
				  , ''''
				  , ''1''
				  , @prm_creater_id_pk
				  , GETDATE()

	END  

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[add_user]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[add_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Hermy Garcia Feliz
-- Create date: 21/01/2015
-- Description:	crea un usuario nuevo
-- =============================================
CREATE PROCEDURE [dbo].[add_user]
--DECLARE
    @prm_company_id_fk INT = 1
  , @prm_user_name VARCHAR(100) = ''admin4@dasistemas.com''
  , @prm_pass VARCHAR(100) = ''dasiprog''
  , @prm_access_name VARCHAR(100) = ''NORMAL''--ADMINISTRADOR,NORMAL,MASTER
  , @prm_creaded_by VARCHAR(100) = ''admin@dasistemas.com''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE 
	  @var_message VARCHAR(500) = ''''
	, @var_type_message VARCHAR(100) =''''
	, @var_code INT = 0
	, @var_access_creaded INT = 0
	, @var_access_creater INT = 0
	, @var_new_use_id_pk INT
	, @var_creator_use_id_pk INT

	SELECT @var_access_creaded = [dbo].[get_detail](@prm_access_name)
	   ,   @var_access_creater = [U].[access_id_fk]
	FROM [dbo].[cu_user] AS U
	WHERE ([U].[name] = @prm_creaded_by  AND [U].[company_id_fk] = @prm_company_id_fk )
	  OR ([U].[name] = @prm_creaded_by AND [U].[company_id_fk] = 0)



    IF [dbo].[get_detail](@prm_access_name) IS NULL
	BEGIN
		
    	SELECT @var_type_message = [M].[type]
    	      , @var_code = [M].[code]
    	      , @var_message =  [M].[menssage] 
		FROM [dbo].[get_row_message](4, ''ACCESS:''+LOWER(@prm_access_name)) AS M

	END
	IF NOT EXISTS ( SELECT * 
	                FROM [dbo].[cu_user] AS U 
	                WHERE ( [U].[name] = @prm_creaded_by AND [U].[company_id_fk] = @prm_company_id_fk )
	                    OR ([U].[name] = @prm_creaded_by AND [U].[company_id_fk] = 0) )
	BEGIN
		SELECT @var_type_message = [M].[type]
    	      , @var_code = [M].[code]
    	      , @var_message =  [M].[menssage] 
		FROM [dbo].[get_row_message](3, ''CREATOR:''+@prm_creaded_by) AS M
	END
	ELSE IF NOT EXISTS ( SELECT * 
	                FROM [dbo].[cu_company] AS CC 
	                WHERE [CC].[company_id_pk] = @prm_company_id_fk )
	BEGIN
		SELECT @var_type_message = [M].[type]
    	      , @var_code = [M].[code]
    	      , @var_message =  [M].[menssage] 
		FROM [dbo].[get_row_message](2, DEFAULT) AS M
	END
	ELSE IF @var_access_creaded > @var_access_creater
	BEGIN
		
    	SELECT @var_type_message = [M].[type]
    	      , @var_code = [M].[code]
    	      , @var_message =  [M].[menssage] 
		FROM [dbo].[get_row_message](1, ''CREATOR:''+@prm_creaded_by+'',ACCESS:''+LOWER(@prm_access_name)+'',USER_TO_CREATE:''+@prm_user_name) AS M

	END
	ELSE
    BEGIN
    	SELECT @var_type_message = [M].[type]
    	      , @var_code = [M].[code]
    	FROM [dbo].[get_row_message](0, DEFAULT) AS M

		SELECT @var_creator_use_id_pk = [U].[user_id_pk]
		FROM [dbo].[cu_user] AS U
		WHERE [U].[name] = @prm_creaded_by

		INSERT INTO [dbo].[cu_user]
				   ([company_id_fk]
				   ,[person_id_fk]
				   ,[name]
				   ,[access_id_fk]
				   ,[created_by]
				   ,[created_date] )
		SELECT @prm_company_id_fk
			, 0 persona_id_fk
			, @prm_user_name nombre
			, [dbo].[get_detail](@prm_access_name) acceso
			, @var_creator_use_id_pk
			, GETDATE()

		SELECT @var_new_use_id_pk = SCOPE_IDENTITY()

		EXECUTE [dbo].[change_pass]
            @prm_user_modified_id = @var_new_use_id_pk
		  , @prm_pass = @prm_pass --= ''dasiprog'' 
		  , @prm_user_modifier_id = @var_creator_use_id_pk--= 1


    END

       

	SELECT @var_type_message TYPE_MESSAGE, @var_code CODE_MESSAGE, @var_message MESSAGE

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[change_pass]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[change_pass]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Hermy Garcia Feliz
-- Create date: 21/01/2015
-- Description:	cambia el pass de un usuario
-- =============================================
CREATE PROCEDURE [dbo].[change_pass]
--DECLARE 
    @prm_user_modified_id INT --= 1
  , @prm_pass VARCHAR(300) --= ''dasiprog'' 
  , @prm_user_modifier_id INT --= 1
AS
BEGIN
	SET NOCOUNT ON
  
  DECLARE @var_Status INT 


IF @prm_user_modified_id = @prm_user_modifier_id 
BEGIN
	SET @var_Status = [dbo].[get_detail](''PASSWORD_REVOCADO'')
END
ELSE 
BEGIN
	SET @var_Status = [dbo].[get_detail](''PASSWORD_INACTIVO'')
END


BEGIN TRANSACTION

	UPDATE [dbo].[cu_password]
	   SET [status_id_fk] = @var_Status
	 WHERE [tipo_object_id_fk] = [dbo].[get_detail](''USUARIO'')
	   AND [status_id_fk] = [dbo].[get_detail](''PASSWORD_ACTIVO'')
	   AND [object_id_fk] = @prm_user_modified_id


    INSERT INTO [dbo].[cu_password]
           ([tipo_object_id_fk]
           ,[object_id_fk]
           ,[hash_value]
           ,[try]
           ,[accesses_count]
           ,[status_id_fk]
           ,[created_by]
           ,[created_date])
     VALUES
           ([dbo].[get_detail](''USUARIO'')
           ,@prm_user_modified_id
           ,[dbo].[get_hash](@prm_pass,CRYPT_GEN_RANDOM(4))
           ,0
           ,0
           ,[dbo].[get_detail](''PASSWORD_ACTIVO'')
           ,@prm_user_modifier_id
           ,GETDATE()
		   )

COMMIT TRAN
    
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[get_programs]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_programs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Hermy Garcia
-- Create date: 26/01/2015
-- Description:	todos los programas de todos los usuarios, con filtros.
-- =============================================
CREATE PROCEDURE [dbo].[get_programs]
--DECLARE
	@prm_user_id_pk VARCHAR(100) = '''' -- '''' means all 
  , @prm_program_name VARCHAR(100) = '''' -- '''' means all 
  , @prm_module_name VARCHAR(100) = '''' -- '''' means all, MODULO_FACTURACION 
  , @prm_tab_name VARCHAR(100) = '''' -- '''' means all, ENTRADA_DATOS 
  , @prm_languaje_name VARCHAR(100) = '''' -- '''' means all, BBX 
  , @prm_user_status VARCHAR(100) = '''' -- '''' means all, USER_DISABLED 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

     SELECT  [c].[display_name] company_name
           , [u].[name] [user_name]
		   , u_statu.[name] [user_status]
           , [p].[name] [program_name]
           , [p].[display_name] [program_display_name]
           , [p].[url] url
           , [mod].[name] module_name
           , [tab].[name] tab_name
           , [lang].[name] languaje_name
           , [p].[order]
          
           --, [per].[permission_id_pk]
           --, [per].[user_id_fk]
           --, [per].[program_id_fk]
           --, [per].[ref_information]
           
	 FROM [dbo].[cu_program] p
	     INNER JOIN [dbo].[cu_permission] AS per ON [per].[program_id_fk] = [p].[program_id_pk]
	         INNER JOIN [dbo].[cu_user] AS u ON [u].[user_id_pk] = [per].[user_id_fk]
			     INNER JOIN [dbo].[detail] AS mod ON [mod].[detail_id_pk] = [p].[module_id_fk]
			         INNER JOIN [dbo].[detail] AS tab ON [tab].[detail_id_pk] = [p].[tab_id_fk]
					     INNER JOIN [dbo].[cu_company] AS c ON [c].[company_id_pk] = [u].[company_id_fk]
			                 INNER JOIN [dbo].[detail] AS lang ON [lang].[detail_id_pk] = [p].[languaje_id_fk]
			                     INNER JOIN [dbo].[detail] AS u_statu ON u_statu.[detail_id_pk] = [u].[status_id_fk]
	 WHERE [p].[active] = ''1''
	    AND [per].[active] = ''1''
		AND ([u].[user_id_pk] = @prm_user_id_pk OR @prm_user_id_pk = '''')
		AND ([p].[name] = @prm_program_name OR @prm_program_name = '''')
		AND ([mod].[name] = @prm_module_name OR @prm_module_name = ''''  )
		AND ([tab].[name] = @prm_tab_name OR @prm_tab_name = ''''  )
		AND ([lang].[name] = @prm_languaje_name OR @prm_languaje_name = ''''  )

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[is_access]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[is_access]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[is_access]
--DECLARE
	@prm_type_object VARCHAR(100) 
  , @prm_object_id_pk INT 
  , @prm_pass VARCHAR(100) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE 
	  @var_message VARCHAR(500) = ''''
	, @var_type_message VARCHAR(100) =''''
	, @var_code INT = 0

    IF @prm_type_object = ''USUARIO''
	BEGIN
    
		SELECT @var_type_message =  ISNULL([POSITIVO].[type], NEGATIVO.[type])
		    ,  @var_code = ISNULL([POSITIVO].[code],NEGATIVO.[code])
			,  @var_message = ISNULL([POSITIVO].[menssage]+''Aceso permitido'',NEGATIVO.[menssage])
		FROM [dbo].[cu_password] AS P
		    OUTER APPLY [dbo].[get_row_message](6,DEFAULT) AS NEGATIVO
		        LEFT JOIN [dbo].[get_row_message](0,DEFAULT) AS POSITIVO ON PWDCOMPARE(@prm_pass,P.hash_value) = 1
		WHERE  [P].[object_id_fk] = @prm_object_id_pk
		  AND P.[status_id_fk] = [dbo].[get_detail](''PASSWORD_ACTIVO'')
		  AND [P].[tipo_object_id_fk] = [dbo].[get_detail](@prm_type_object) 


	END ELSE IF @prm_type_object = ''PROGRAMA''
	BEGIN
		PRINT ''a trabajar''
	END
    ELSE   
    BEGIN
    	SELECT @var_type_message = [M].[type]
    	      , @var_code = [M].[code]
    	      , @var_message =  [M].[menssage] 
		FROM [dbo].[get_row_message](5, ''TIPO_OBJETO:''+@prm_type_object) AS M

    END
  
    SELECT @var_type_message TYPE_MESSAGE, @var_code CODE_MESSAGE, @var_message MESSAGE  

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[revoke_permision_program]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[revoke_permision_program]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Hermy Garcia Feliz
-- Create date: 21/01/2015
-- Description:	adiciona un permiso (programa -> usuario)
-- =============================================
CREATE PROCEDURE [dbo].[revoke_permision_program]
	@prm_user_id_pk INT = 8 
  , @prm_program_name VARCHAR(20) = ''SCG601''
  , @prm_creater_id_pk INT = 1 
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @var_program_id_pk INT = 0

	SELECT @var_program_id_pk = [CP].[program_id_pk]
	FROM [dbo].[cu_program] AS CP
	WHERE [CP].[name] = @prm_program_name


    UPDATE [dbo].[cu_permission]
		SET [active] = ''0''
		    , [modified_by] = @prm_creater_id_pk
			, [modified_date] = GETDATE()
		WHERE [user_id_fk] = @prm_user_id_pk AND [program_id_fk] = @var_program_id_pk 

END
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[cleaner_str]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cleaner_str]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'




CREATE FUNCTION [dbo].[cleaner_str](
     @str varchar(1000) = ''12345678912''
   , @regx VARCHAR(3000) = ''%[^0123456789 ]%''
   , @replace_by VARCHAR(1) = '' ''
   )
RETURNS VARCHAR(1000)
BEGIN
  DECLARE @pos INT
  SET @Pos = PATINDEX(@regx,@str)  
  WHILE @Pos > 0
   BEGIN
    SET @str = STUFF(@str,@pos,1,@replace_by)
    SET @Pos = PATINDEX(@regx,@str)
   END
  RETURN @str
  --SELECT @str
END




' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[get_detail]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_detail]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Hermy Garcia
-- Create date: 08/01/2015
-- Description:	Selecciona un detail con un nombre del detail
-- =============================================
CREATE FUNCTION [dbo].[get_detail]
(
--DECLARE
	@prm_detail_name VARCHAR(100) 
)
RETURNS INT
AS
BEGIN
	DECLARE @detail_id int 

	SELECT @detail_id = d.detail_id_pk
	FROM dbo.detail d
	WHERE-- d.active = ''1''
	   --AND
	    d.name LIKE @prm_detail_name 
    --SELECT @detail_id
	RETURN @detail_id

END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[get_hash]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_hash]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Hermy Garcia
-- Create date: 08/01/2015
-- Description:	Selecciona un detail con un nombre del detail
-- =============================================
CREATE FUNCTION [dbo].[get_hash]
(
--DECLARE
	@prm_pass NVARCHAR(100) --= ''dasiprog''
  , @prm_salt VARBINARY(4) --= CRYPT_GEN_RANDOM(4);
)
RETURNS VARBINARY(MAX)
AS
BEGIN
	
   -- DECLARE @salt VARBINARY(4) = CRYPT_GEN_RANDOM(4);
    DECLARE @hash VARBINARY(MAX); 
    SET @hash = 0x0200 + @prm_salt + HASHBYTES(''SHA2_512'', CAST(@prm_pass AS VARBINARY(MAX)) + @prm_salt);
 
    --SELECT @hash AS HashValue , PWDCOMPARE(@prm_pass,@hash) AS IsPasswordHash;
	RETURN @hash 

END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[get_row_message]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_row_message]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Hermy Garcia Feliz
-- Create date: 21/01/2015
-- Description:	Obtiene la estructura y el tipo del mensaje por la configuracion
-- =============================================
CREATE FUNCTION [dbo].[get_row_message]
(	
--DECLARE 
	@prm_code INT = 1
  , @var_substitutions VARCHAR(MAX) = ''CREATOR:hermygarcia@dasistemas.com,ACCESS:ADMINISTRADOR,USER_TO_CREATE:admin2@dasistemas.com''
)
RETURNS 
--DECLARE
 @tmp TABLE (
    [type] VARCHAR(100)  NOT NULL  
  , [code] INT  NOT NULL  
  , menssage VARCHAR(MAX)
) 
AS
BEGIN 
	-- Add the SELECT statement with parameter references here
	DECLARE @x AS TABLE (
		[key] VARCHAR(MAX), 
		repace_by VARCHAR(MAX)
	)	

	DECLARE @var_message VARCHAR(max) = ''''
	, @var_type_message VARCHAR(100) =''''
	, @var_code INT = 0 

	
	SELECT  @var_type_message = [D].[name]
	      , @var_code = @prm_code
		  , @var_message = [M].[display_desc]
	FROM [dbo].[cu_message] AS M
	    INNER JOIN [dbo].[detail] AS D ON [D].[detail_id_pk] = [M].[message_type_id_fk]
	WHERE [M].[code] = @prm_code

	IF CHARINDEX('':'', @var_substitutions) > 0
	BEGIN
		INSERT INTO @x
				( [key] , [repace_by] )
		SELECT  LEFT([X].[x],CHARINDEX('':'',[X].[x])-1) x , SUBSTRING([X].[x], CHARINDEX('':'',[X].[x])+1, LEN([X].[x]))
		FROM [dbo].[split](@var_substitutions,'','') X


		SELECT @var_message = REPLACE(@var_message, ''<''+[X].[key]+''>'', [X].[repace_by] )
			  FROM @x AS X
	END


	INSERT INTO @tmp
	        ( [type] , [code] , [menssage] )
	SELECT @var_type_message, @var_code , @var_message


	--SELECT * FROM @tmp AS T
	RETURN 
END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[split]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[split]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Hermy Garcia
-- Create date: 24/06/2014
-- Description:	Combiert una cadena en tabla por media un criterio
-- =============================================
CREATE FUNCTION [dbo].[split] 
(	
--DECLARE
	@prm_str VARCHAR(MAX) = ''CREATOR:HERMY,ACCESS:PERMISION,USER_TO_CREATE:hermygarcia2@gmail.com'' 
 ,  @prm_criterion VARCHAR(1) = '',''
)
RETURNS 
--DECLARE
 @tmp TABLE (
    x VARCHAR(50) NOT NULL  
)
AS
BEGIN
    DECLARE @var_Len INT = LEN(@prm_str)
	   ,    @var_old_index INT = 0
	   ,    @var_new_index INT = 1
	   ,    @var_temp_string VARCHAR(MAX) = ''''


	WHILE @var_new_index < @var_Len-- AND @var_NewIndex <> 0
	BEGIN
        
	   
    
        SET @var_old_index = @var_new_index
	    SET @var_new_index = CHARINDEX(@prm_criterion,@prm_str,@var_new_index+1)


		IF @var_new_index = 0 SET @var_new_index = @var_Len
		
		SET @var_temp_string = REPLACE(SUBSTRING(@prm_str,@var_old_index,@var_new_index-@var_old_index+1),@prm_criterion,'''')
		--SELECT @var_OldIndex OLD, @var_NewIndex NEW, SUBSTRING(@prm_String,@var_OldIndex,@var_NewIndex-@var_OldIndex) STR
        INSERT INTO @tmp
               ( x )
		SELECT @var_temp_string
		WHERE @var_temp_string <> ''''


	END

SALIR:
--    SELECT * FROM @TMP
	RETURN
END  
--)
--GO
' 
END

GO
/****** Object:  Table [dbo].[cu_branch]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_branch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cu_branch](
	[branch_id_pk] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](8) NOT NULL,
	[company_id_fk] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [pk_cu_branch] PRIMARY KEY CLUSTERED 
(
	[branch_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cu_company]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_company]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cu_company](
	[company_id_pk] [int] NOT NULL,
	[code] [varchar](8) NOT NULL,
	[display_name] [varchar](500) NOT NULL,
	[db_name] [varchar](50) NOT NULL,
	[local] [varchar](100) NOT NULL,
	[datetime]  AS (getdate()),
	[created_by] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_cu_company] PRIMARY KEY CLUSTERED 
(
	[company_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cu_message]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_message]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cu_message](
	[message_id_pk] [int] IDENTITY(1,1) NOT NULL,
	[message_type_id_fk] [int] NOT NULL,
	[code] [int] NOT NULL,
	[display_desc] [varchar](500) NOT NULL,
	[desc] [varchar](500) NULL,
	[created_by] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
 CONSTRAINT [PK_message] PRIMARY KEY CLUSTERED 
(
	[message_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cu_password]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_password]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cu_password](
	[password_id_pk] [int] IDENTITY(1,1) NOT NULL,
	[tipo_object_id_fk] [int] NOT NULL,
	[object_id_fk] [int] NOT NULL,
	[hash_value] [varbinary](max) NOT NULL,
	[try] [int] NOT NULL,
	[accesses_count] [int] NOT NULL,
	[last_accesses] [datetime] NULL,
	[status_id_fk] [int] NOT NULL,
	[created_by] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
 CONSTRAINT [PK_cu_password] PRIMARY KEY CLUSTERED 
(
	[password_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cu_permission]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_permission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cu_permission](
	[permission_id_pk] [int] IDENTITY(1,1) NOT NULL,
	[user_id_fk] [int] NOT NULL,
	[program_id_fk] [int] NOT NULL,
	[ref_information] [varchar](1000) NULL,
	[active] [bit] NOT NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [pk_cu_permissions] PRIMARY KEY CLUSTERED 
(
	[permission_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cu_profile]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_profile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cu_profile](
	[profile_id_pk] [int] IDENTITY(1,1) NOT NULL,
	[company_id_pk] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[display_name] [varchar](500) NOT NULL,
	[order] [int] NOT NULL,
	[active] [bit] NOT NULL,
	[created_by] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [pk_cu_profile] PRIMARY KEY CLUSTERED 
(
	[profile_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cu_program]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_program]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cu_program](
	[program_id_pk] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[display_name] [varchar](100) NOT NULL,
	[url] [varchar](500) NULL,
	[module_id_fk] [int] NOT NULL,
	[tab_id_fk] [int] NOT NULL,
	[languaje_id_fk] [int] NOT NULL,
	[order] [varchar](50) NOT NULL,
	[active] [bit] NOT NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [pk_cu_program] PRIMARY KEY CLUSTERED 
(
	[program_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cu_user]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cu_user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cu_user](
	[user_id_pk] [int] NOT NULL,
	[company_id_fk] [int] NULL,
	[person_id_fk] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[access_id_fk] [int] NOT NULL,
	[status_id_fk] [int] NOT NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [pk_cu_user] PRIMARY KEY CLUSTERED 
(
	[user_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detail]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[detail](
	[detail_id_pk] [int] IDENTITY(1,1) NOT NULL,
	[header_id_fk] [int] NOT NULL,
	[name] [varchar](500) NOT NULL,
	[code] [varchar](8) NULL,
	[display_name] [varchar](500) NOT NULL,
	[desc] [varchar](500) NULL,
	[order] [int] NOT NULL,
	[active] [bit] NOT NULL,
	[created_by] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [pk_detail] PRIMARY KEY CLUSTERED 
(
	[detail_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[header]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[header]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[header](
	[header_id_pk] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](500) NOT NULL,
	[area] [int] NOT NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NOT NULL,
 CONSTRAINT [pk_cu_header] PRIMARY KEY CLUSTERED 
(
	[header_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[object]    Script Date: 07/02/2015 9:28:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[object]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[object](
	[object_id_pk] [int] IDENTITY(1,1) NOT NULL,
	[company_id_fk] [int] NOT NULL,
	[type_object_id_pk] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[display_name] [varchar](500) NOT NULL,
	[order] [int] NOT NULL,
	[active] [bit] NOT NULL,
	[created_by] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_object] PRIMARY KEY CLUSTERED 
(
	[object_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cu_branch] ON 

INSERT [dbo].[cu_branch] ([branch_id_pk], [code], [company_id_fk], [name], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1, N'0001', 1, N'PRINCIPAL', 1, CAST(0x0000A41801123B5C AS DateTime), NULL, NULL)
INSERT [dbo].[cu_branch] ([branch_id_pk], [code], [company_id_fk], [name], [created_by], [created_date], [modified_by], [modified_date]) VALUES (2, N'0002', 1, N'SANTIAGO', 1, CAST(0x0000A41801123B5C AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cu_branch] OFF
INSERT [dbo].[cu_company] ([company_id_pk], [code], [display_name], [db_name], [local], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1, N'1', N'D. A. SISTEMAS INTEGRADOS', N'DASIS', N'', 1, CAST(0x0000A418010B4150 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cu_message] ON 

INSERT [dbo].[cu_message] ([message_id_pk], [message_type_id_fk], [code], [display_desc], [desc], [created_by], [created_date]) VALUES (1, 1949, 0, N'', NULL, 1, CAST(0x0000A42700C9CEA2 AS DateTime))
INSERT [dbo].[cu_message] ([message_id_pk], [message_type_id_fk], [code], [display_desc], [desc], [created_by], [created_date]) VALUES (2, 1945, 1, N'Usuario ''<CREATOR>'' no puede crear el nivel de ''<ACCESS>'' para el usuario ''<USER_TO_CREATE>''.', NULL, 1, CAST(0x0000A42700D4C26B AS DateTime))
INSERT [dbo].[cu_message] ([message_id_pk], [message_type_id_fk], [code], [display_desc], [desc], [created_by], [created_date]) VALUES (3, 1945, 2, N'Compañia no existe, verifique.', NULL, 1, CAST(0x0000A42700D4C26B AS DateTime))
INSERT [dbo].[cu_message] ([message_id_pk], [message_type_id_fk], [code], [display_desc], [desc], [created_by], [created_date]) VALUES (4, 1945, 3, N'Usuario ''<CREATOR>'' no existe, verifique.', NULL, 1, CAST(0x0000A42700D4C26B AS DateTime))
INSERT [dbo].[cu_message] ([message_id_pk], [message_type_id_fk], [code], [display_desc], [desc], [created_by], [created_date]) VALUES (5, 1945, 4, N'Acceso ''<ACCESS>'' no existe, verifique.', NULL, 1, CAST(0x0000A42700D4C26B AS DateTime))
INSERT [dbo].[cu_message] ([message_id_pk], [message_type_id_fk], [code], [display_desc], [desc], [created_by], [created_date]) VALUES (7, 1945, 5, N'Tipo de objeto ''<TIPO_OBJETO>'' no valido, verifique.', NULL, 1, CAST(0x0000A42700D4C26B AS DateTime))
INSERT [dbo].[cu_message] ([message_id_pk], [message_type_id_fk], [code], [display_desc], [desc], [created_by], [created_date]) VALUES (9, 1945, 6, N'Usuario o password pass incorrecto, verifique.', NULL, 1, CAST(0x0000A42700D4C26B AS DateTime))
SET IDENTITY_INSERT [dbo].[cu_message] OFF
SET IDENTITY_INSERT [dbo].[cu_password] ON 

INSERT [dbo].[cu_password] ([password_id_pk], [tipo_object_id_fk], [object_id_fk], [hash_value], [try], [accesses_count], [last_accesses], [status_id_fk], [created_by], [created_date]) VALUES (1, 1938, 5, 0x02007F0ADE55FD61F6E454B78365D327AFF7F15636FEEFF5C6531A5E325669ED952BACD9FCFAB96F339B3B2684FF644823627330FD7965FFB157EF49FBD7504C5472C80D7656, 0, 0, NULL, 1934, 1, CAST(0x0000A427013DB8A9 AS DateTime))
INSERT [dbo].[cu_password] ([password_id_pk], [tipo_object_id_fk], [object_id_fk], [hash_value], [try], [accesses_count], [last_accesses], [status_id_fk], [created_by], [created_date]) VALUES (2, 1938, 6, 0x020060A1D26E7ADC4E1CD074C4E0AF16858A1713B34DA299A3D267B476B13EEBF822C1EAB9FAFACC24B63E9CFB7EA1E1867010AAB8CD79EEE30FAA8B4CCE0383749DD8E4ED1F, 0, 0, NULL, 1934, 4, CAST(0x0000A4270145C02E AS DateTime))
INSERT [dbo].[cu_password] ([password_id_pk], [tipo_object_id_fk], [object_id_fk], [hash_value], [try], [accesses_count], [last_accesses], [status_id_fk], [created_by], [created_date]) VALUES (3, 1938, 7, 0x02002569BB4805219DE723E3C5AC83C602120ED358943850266FD48C7938F3BA8E98C02A1CAA9E32D3F61C12B9F06CA4F6FA2235BB1815699FD4ED1A98FC9469B5B6C7D32849, 0, 0, NULL, 1934, 4, CAST(0x0000A4270151B5D2 AS DateTime))
INSERT [dbo].[cu_password] ([password_id_pk], [tipo_object_id_fk], [object_id_fk], [hash_value], [try], [accesses_count], [last_accesses], [status_id_fk], [created_by], [created_date]) VALUES (4, 1938, 8, 0x02007C4DBC7FB9D4165315854BCEB26837C83482865FAFF02BC4DDA923080448EEE55CFB9D243FEB14C05B7449D50D4054088504EEAB4FE7A13415D6BD398042815329491CF7, 0, 0, NULL, 1934, 4, CAST(0x0000A42701571B50 AS DateTime))
SET IDENTITY_INSERT [dbo].[cu_password] OFF
SET IDENTITY_INSERT [dbo].[cu_permission] ON 

INSERT [dbo].[cu_permission] ([permission_id_pk], [user_id_fk], [program_id_fk], [ref_information], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1, 2, 8, NULL, 1, 1, CAST(0x0000A41801278F65 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cu_permission] OFF
SET IDENTITY_INSERT [dbo].[cu_program] ON 

INSERT [dbo].[cu_program] ([program_id_pk], [name], [display_name], [url], [module_id_fk], [tab_id_fk], [languaje_id_fk], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (8, N'CCC001', N'Cuadre de Estación', N'C:/usr/propagas/prog/factuara/CCC001.BBX', 1928, 2, 1927, N'1', 1, 1, CAST(0x0000A41801266F03 AS DateTime), NULL, NULL)
INSERT [dbo].[cu_program] ([program_id_pk], [name], [display_name], [url], [module_id_fk], [tab_id_fk], [languaje_id_fk], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (9, N'SCG601', N'Confecciona Comprobantes', N'C:/usr/propagas/prog/contab/SCG601.BBX', 1929, 2, 1927, N'1', 1, 1, CAST(0x0000A41801266F03 AS DateTime), NULL, NULL)
INSERT [dbo].[cu_program] ([program_id_pk], [name], [display_name], [url], [module_id_fk], [tab_id_fk], [languaje_id_fk], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (11, N'SCG602', N'Modifica Comprobantes', N'C:/usr/propagas/prog/contab/SCG602.BBX', 1929, 2, 1927, N'1', 1, 1, CAST(0x0000A41801266F03 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cu_program] OFF
INSERT [dbo].[cu_user] ([user_id_pk], [company_id_fk], [person_id_fk], [name], [access_id_fk], [status_id_fk], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1, 0, 0, N'master', 1943, 1953, 1, CAST(0x0000A418010B7090 AS DateTime), NULL, NULL)
INSERT [dbo].[cu_user] ([user_id_pk], [company_id_fk], [person_id_fk], [name], [access_id_fk], [status_id_fk], [created_by], [created_date], [modified_by], [modified_date]) VALUES (2, 1, 1, N'hermygarcia@dasistemas.com', 1940, 1953, 1, CAST(0x0000A418010B7090 AS DateTime), NULL, NULL)
INSERT [dbo].[cu_user] ([user_id_pk], [company_id_fk], [person_id_fk], [name], [access_id_fk], [status_id_fk], [created_by], [created_date], [modified_by], [modified_date]) VALUES (4, 1, 2, N'admin@dasistemas.com', 1940, 1953, 1, CAST(0x0000A418010B7090 AS DateTime), NULL, NULL)
INSERT [dbo].[cu_user] ([user_id_pk], [company_id_fk], [person_id_fk], [name], [access_id_fk], [status_id_fk], [created_by], [created_date], [modified_by], [modified_date]) VALUES (5, 1, 0, N'admin2@dasistemas.com', 1942, 1953, 1, CAST(0x0000A427013DB8A7 AS DateTime), NULL, NULL)
INSERT [dbo].[cu_user] ([user_id_pk], [company_id_fk], [person_id_fk], [name], [access_id_fk], [status_id_fk], [created_by], [created_date], [modified_by], [modified_date]) VALUES (6, 1, 0, N'admin3@dasistemas.com', 1940, 1953, 4, CAST(0x0000A4270145C02C AS DateTime), NULL, NULL)
INSERT [dbo].[cu_user] ([user_id_pk], [company_id_fk], [person_id_fk], [name], [access_id_fk], [status_id_fk], [created_by], [created_date], [modified_by], [modified_date]) VALUES (7, 1, 0, N'adminh@dasistemas.com', 1940, 1953, 4, CAST(0x0000A4270151B5D1 AS DateTime), NULL, NULL)
INSERT [dbo].[cu_user] ([user_id_pk], [company_id_fk], [person_id_fk], [name], [access_id_fk], [status_id_fk], [created_by], [created_date], [modified_by], [modified_date]) VALUES (8, 1, 0, N'admin4@dasistemas.com', 1940, 1953, 4, CAST(0x0000A42701571B50 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[detail] ON 

INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (2, 1, N'ENTRADA_DATOS', NULL, N'Entrada de Datos', NULL, 1, 1, 1, CAST(0x0000A418010CF2A6 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (3, 1, N'REPORTES', NULL, N'Reportes', NULL, 2, 1, 1, CAST(0x0000A418010D1414 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (4, 1, N'CONSULTAS', NULL, N'Consultas', NULL, 3, 1, 1, CAST(0x0000A418010D9043 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (5, 1, N'CIERRES', NULL, N'Cierres y Otros', NULL, 4, 1, 1, CAST(0x0000A418010DAE1E AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1269, 3, N'A__.NET', NULL, N'A# .NET', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1270, 3, N'A__AXIOM', NULL, N'A# (Axiom)										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1271, 3, N'A-0_SYSTEM', NULL, N'A-0 System										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1272, 3, N'A+', NULL, N'A+												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1273, 3, N'A++', NULL, N'A++												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1274, 3, N'ABAP', NULL, N'ABAP												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1275, 3, N'ABC', NULL, N'ABC												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1276, 3, N'ABC_ALGOL', NULL, N'ABC ALGOL										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1277, 3, N'ABLE', NULL, N'ABLE												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1278, 3, N'ABSET', NULL, N'ABSET											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1279, 3, N'ABSYS', NULL, N'ABSYS											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1280, 3, N'ABUNDANCE', NULL, N'Abundance										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1281, 3, N'ACC', NULL, N'ACC												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1282, 3, N'ACCENT', NULL, N'Accent											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1283, 3, N'ACE_DASL', NULL, N'Ace DASL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1284, 3, N'ACT-III', NULL, N'ACT-III											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1285, 3, N'ACTION_', NULL, N'Action!											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1286, 3, N'ACTIONSCRIPT', NULL, N'ActionScript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1287, 3, N'ADA', NULL, N'Ada												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1288, 3, N'ADENINE', NULL, N'Adenine											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1289, 3, N'AGDA', NULL, N'Agda												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1290, 3, N'AGORA', NULL, N'Agora											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1291, 3, N'AIMMS', NULL, N'AIMMS											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1292, 3, N'ALEF', NULL, N'Alef												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1293, 3, N'ALF', NULL, N'ALF												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1294, 3, N'ALGOL_58', NULL, N'ALGOL 58											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1295, 3, N'ALGOL_60', NULL, N'ALGOL 60											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1296, 3, N'ALGOL_68', NULL, N'ALGOL 68											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1297, 3, N'ALICE', NULL, N'Alice											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1298, 3, N'ALMA-0', NULL, N'Alma-0											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1299, 3, N'AMBIENTTALK', NULL, N'AmbientTalk										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1300, 3, N'AMIGA_E', NULL, N'Amiga E											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1301, 3, N'AMOS', NULL, N'AMOS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1302, 3, N'AMPL', NULL, N'AMPL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1303, 3, N'APL', NULL, N'APL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1304, 3, N'APPLESCRIPT', NULL, N'AppleScript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1305, 3, N'ARC', NULL, N'Arc												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1306, 3, N'ARDEN_SYNTAX1', NULL, N'Arden Syntax1									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1307, 3, N'AREXX', NULL, N'ARexx											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1308, 3, N'ARGUS', NULL, N'Argus											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1309, 3, N'ASPECTJ', NULL, N'AspectJ											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1310, 3, N'ASP.NET', NULL, N'ASP.NET											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1311, 3, N'ASSEMBLY_LANGUAGE', NULL, N'Assembly language								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1312, 3, N'ATS', NULL, N'ATS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1313, 3, N'ATEJI_PX', NULL, N'Ateji PX											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1314, 3, N'AUTOHOTKEY', NULL, N'AutoHotkey										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1315, 3, N'AUTOCODER', NULL, N'Autocoder										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1316, 3, N'AUTOIT', NULL, N'AutoIt											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1317, 3, N'AUTOLISP', NULL, N'AutoLISP											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1318, 3, N'AVEREST', NULL, N'Averest											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1319, 3, N'AWK', NULL, N'AWK												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1320, 3, N'AXUM', NULL, N'Axum												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1321, 3, N'B', NULL, N'B												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1322, 3, N'BABBAGE', NULL, N'Babbage											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1323, 3, N'BASH', NULL, N'Bash												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1324, 3, N'BASIC', NULL, N'BASIC											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1325, 3, N'BC', NULL, N'bc												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1326, 3, N'BCPL', NULL, N'BCPL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1327, 3, N'BEANSHELL', NULL, N'BeanShell										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1328, 3, N'BATCH_WINDOWSDOS', NULL, N'Batch (Windows/Dos)								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1329, 3, N'BERTRAND', NULL, N'Bertrand											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1330, 3, N'BETA', NULL, N'BETA												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1331, 3, N'BIGWIG', NULL, N'Bigwig											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1332, 3, N'BISTRO', NULL, N'Bistro											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1333, 3, N'BITC', NULL, N'BitC												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1334, 3, N'BLISS', NULL, N'BLISS											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1335, 3, N'BLUE', NULL, N'Blue												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1336, 3, N'BON', NULL, N'Bon												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1337, 3, N'BOO', NULL, N'Boo												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1338, 3, N'BOOMERANG', NULL, N'Boomerang										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1339, 3, N'BOURNE_SHELL_INCLUYE_BASH_Y_KSH', NULL, N'Bourne shell (incluye bash y ksh)				  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1340, 3, N'B.R.E.W.', NULL, N'B.R.E.W.											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1341, 3, N'BPEL', NULL, N'BPEL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1342, 3, N'BUGSYS', NULL, N'BUGSYS											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1343, 3, N'BUILDPROFESSIONAL', NULL, N'BuildProfessional								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1344, 3, N'C', NULL, N'C												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1345, 3, N'C--', NULL, N'C--												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1346, 3, N'C++_-_ISOIEC_14882', NULL, N'C++ - ISO/IEC 14882								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1347, 3, N'C__-_ISOIEC_23270', NULL, N'C# - ISO/IEC 23270								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1348, 3, N'CAL', NULL, N'C/AL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1349, 3, N'CACHÉ_OBJECTSCRIPT', NULL, N'Caché ObjectScript								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1350, 3, N'C_SHELL', NULL, N'C Shell											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1351, 3, N'CAML', NULL, N'Caml												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1352, 3, N'CANDLE', NULL, N'Candle											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1353, 3, N'CAYENNE', NULL, N'Cayenne											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1354, 3, N'CDUCE', NULL, N'CDuce											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1355, 3, N'CECIL', NULL, N'Cecil											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1356, 3, N'CEL', NULL, N'Cel												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1357, 3, N'CESIL', NULL, N'Cesil											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1358, 3, N'CEYLON', NULL, N'Ceylon											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1359, 3, N'CFML', NULL, N'CFML												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1360, 3, N'CG', NULL, N'Cg												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1361, 3, N'CHAPEL', NULL, N'Chapel											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1362, 3, N'CHAIN', NULL, N'CHAIN											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1363, 3, N'CHARITY', NULL, N'Charity											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
GO
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1364, 3, N'CHARM', NULL, N'Charm											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1365, 3, N'CHEF', NULL, N'Chef												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1366, 3, N'CHILL', NULL, N'CHILL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1367, 3, N'CHIP-8', NULL, N'CHIP-8											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1368, 3, N'CHOMSKI', NULL, N'chomski											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1369, 3, N'CHROME_AHORA_OXYGENE', NULL, N'Chrome (Ahora Oxygene)							  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1370, 3, N'CHUCK', NULL, N'ChucK											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1371, 3, N'CICS', NULL, N'CICS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1372, 3, N'CIL', NULL, N'CIL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1373, 3, N'CILK', NULL, N'Cilk												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1374, 3, N'CL_IBM', NULL, N'CL (IBM)											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1375, 3, N'CLAIRE', NULL, N'Claire											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1376, 3, N'CLARION', NULL, N'Clarion											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1377, 3, N'CLEAN', NULL, N'Clean											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1378, 3, N'CLIPPER', NULL, N'Clipper											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1379, 3, N'CLIST', NULL, N'CLIST											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1380, 3, N'CLOJURE', NULL, N'Clojure											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1381, 3, N'CLU', NULL, N'CLU												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1382, 3, N'CMS-2', NULL, N'CMS-2											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1383, 3, N'COBOL_-_ISOIEC_1989', NULL, N'COBOL - ISO/IEC 1989								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1384, 3, N'COBRA', NULL, N'Cobra											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1385, 3, N'CODE', NULL, N'CODE												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1386, 3, N'COFFEESCRIPT', NULL, N'CoffeeScript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1387, 3, N'COLA', NULL, N'Cola												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1388, 3, N'COLDC', NULL, N'ColdC											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1389, 3, N'COLDFUSION', NULL, N'ColdFusion										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1390, 3, N'COOL', NULL, N'Cool												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1391, 3, N'COMAL', NULL, N'COMAL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1392, 3, N'COMMON_LISP_TAMBIÉN_CONOCIDO_COMO_CL', NULL, N'Common Lisp (también conocido como CL)			  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1393, 3, N'COMPASS', NULL, N'COMPASS											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1394, 3, N'COMPONENT_PASCAL', NULL, N'Component Pascal									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1395, 3, N'COMIT', NULL, N'COMIT											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1396, 3, N'CONSTRAINT_HANDLING_RULES_CHR', NULL, N'Constraint Handling Rules (CHR)					  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1397, 3, N'CONVERGE', NULL, N'Converge											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1398, 3, N'CORAL66', NULL, N'CORAL66											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1399, 3, N'CORN', NULL, N'Corn												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1400, 3, N'CORVISION', NULL, N'CorVision										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1401, 3, N'COQ', NULL, N'Coq												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1402, 3, N'COWSEL', NULL, N'COWSEL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1403, 3, N'CPL', NULL, N'CPL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1404, 3, N'CSH', NULL, N'csh												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1405, 3, N'CSP', NULL, N'CSP												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1406, 3, N'CSOUND', NULL, N'Csound											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1407, 3, N'CURL', NULL, N'Curl												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1408, 3, N'CURRY', NULL, N'Curry											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1409, 3, N'CYCLONE', NULL, N'Cyclone											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1410, 3, N'CYTHON', NULL, N'Cython											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1411, 3, N'D', NULL, N'D												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1412, 3, N'DAVINCI_CONCURRENTE', NULL, N'DaVinci Concurrente								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1413, 3, N'DASL_DATAPOINT_S_ADVANCED_SYSTEMS_LANGUAGE', NULL, N'DASL (Datapoint s Advanced Systems Language)		  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1414, 3, N'DASL', NULL, N'DASL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1415, 3, N'DART', NULL, N'Dart												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1416, 3, N'DATAFLEX', NULL, N'DataFlex											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1417, 3, N'DATALOG', NULL, N'Datalog											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1418, 3, N'DATATRIEVE', NULL, N'DATATRIEVE										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1419, 3, N'DBASE', NULL, N'dBase											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1420, 3, N'DC', NULL, N'DC												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1421, 3, N'DCL', NULL, N'DCL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1422, 3, N'DEESEL_FORMALMENTE_G', NULL, N'Deesel (formalmente G)							  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1423, 3, N'DELPHI', NULL, N'Delphi											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1424, 3, N'DINKC', NULL, N'DinkC											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1425, 3, N'DIBOL', NULL, N'DIBOL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1426, 3, N'DLI', NULL, N'DL/I												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1427, 3, N'DRACO', NULL, N'Draco											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1428, 3, N'DYLAN', NULL, N'Dylan											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1429, 3, N'DYNAMO', NULL, N'DYNAMO											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1430, 3, N'E', NULL, N'E												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1431, 3, N'E_', NULL, N'E#												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1432, 3, N'EASE', NULL, N'Ease												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1433, 3, N'EASY_PLI', NULL, N'Easy PL/I										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1434, 3, N'EASYTRIEVE_PLUS', NULL, N'EASYTRIEVE PLUS									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1435, 3, N'ECMASCRIPT', NULL, N'ECMAScript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1436, 3, N'EDINBURGH_IMP', NULL, N'Edinburgh IMP									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1437, 3, N'EGL', NULL, N'EGL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1438, 3, N'EIFFEL', NULL, N'Eiffel											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1439, 3, N'ELAN', NULL, N'ELAN												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1440, 3, N'EMACS_LISP', NULL, N'Emacs Lisp										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1441, 3, N'EMERALD', NULL, N'Emerald											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1442, 3, N'EPIGRAM', NULL, N'Epigram											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1443, 3, N'ERLANG', NULL, N'Erlang											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1444, 3, N'ES', NULL, N'es												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1445, 3, N'ESCAPADE', NULL, N'Escapade											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1446, 3, N'ESCHER', NULL, N'Escher											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1447, 3, N'ESPOL', NULL, N'ESPOL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1448, 3, N'ESTEREL', NULL, N'Esterel											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1449, 3, N'ETOYS', NULL, N'Etoys											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1450, 3, N'EUCLID', NULL, N'Euclid											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1451, 3, N'EULER', NULL, N'Euler											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1452, 3, N'EUPHORIA', NULL, N'EUPHORIA											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1453, 3, N'EUSLISP_ROBOT_LENGUAJE_DE_PROGRAMACIÓN', NULL, N'EusLisp Robot Lenguaje de programación			  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1454, 3, N'CMS_EXEC', NULL, N'CMS EXEC											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1455, 3, N'EXEC_2', NULL, N'EXEC 2											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1456, 3, N'F', NULL, N'F												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1457, 3, N'F_', NULL, N'F#												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1458, 3, N'FACTOR', NULL, N'Factor											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1459, 3, N'FALCON', NULL, N'Falcon											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1460, 3, N'FANCY', NULL, N'Fancy											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1461, 3, N'FANTOM', NULL, N'Fantom											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1462, 3, N'FAUST', NULL, N'FAUST											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1463, 3, N'FELIX', NULL, N'Felix											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
GO
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1464, 3, N'FERITE', NULL, N'Ferite											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1465, 3, N'FFP', NULL, N'FFP												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1466, 3, N'FJÖLNIR', NULL, N'Fjölnir											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1467, 3, N'FL', NULL, N'FL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1468, 3, N'FLAVORS', NULL, N'Flavors											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1469, 3, N'FLEX', NULL, N'Flex												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1470, 3, N'FLOW-MATIC', NULL, N'FLOW-MATIC										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1471, 3, N'FOCAL', NULL, N'FOCAL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1472, 3, N'FOCUS', NULL, N'FOCUS											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1473, 3, N'FOIL', NULL, N'FOIL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1474, 3, N'FORMAC', NULL, N'FORMAC											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1475, 3, N'FORMULA', NULL, N'@Formula											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1476, 3, N'FORTH', NULL, N'Forth											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1477, 3, N'FORTRAN_-_ISOIEC_1539', NULL, N'Fortran - ISO/IEC 1539							  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1478, 3, N'FORTRESS', NULL, N'Fortress											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1479, 3, N'FOXBASE', NULL, N'FoxBase											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1480, 3, N'FOXPRO', NULL, N'FoxPro											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1481, 3, N'FP', NULL, N'FP												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1482, 3, N'FPR', NULL, N'FPr												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1483, 3, N'FRANZ_LISP', NULL, N'Franz Lisp										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1484, 3, N'FRINK', NULL, N'Frink											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1485, 3, N'F-SCRIPT', NULL, N'F-Script											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1486, 3, N'FSPROG', NULL, N'FSProg											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1487, 3, N'FUXI', NULL, N'Fuxi												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1488, 3, N'G', NULL, N'G												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1489, 3, N'GAMBAS', NULL, N'Gambas											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1490, 3, N'GAME_MAKER_LANGUAGE', NULL, N'Game Maker Language								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1491, 3, N'GAMEMONKEY_SCRIPT', NULL, N'GameMonkey Script								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1492, 3, N'GAMS', NULL, N'GAMS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1493, 3, N'GAP', NULL, N'GAP												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1494, 3, N'G-CODE', NULL, N'G-code											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1495, 3, N'GENIE', NULL, N'Genie											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1496, 3, N'GDL', NULL, N'GDL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1497, 3, N'GIBIANE', NULL, N'Gibiane											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1498, 3, N'GJ', NULL, N'GJ												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1499, 3, N'GEORGE_LENGUAJE_DE_PROGRAMACIÓN', NULL, N'GEORGE (lenguaje de programación)				  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1500, 3, N'GLSL', NULL, N'GLSL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1501, 3, N'GNU_E', NULL, N'GNU E											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1502, 3, N'GO', NULL, N'Go												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1503, 3, N'GO_', NULL, N'Go!												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1504, 3, N'GOAL', NULL, N'GOAL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1505, 3, N'GÖDEL', NULL, N'Gödel											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1506, 3, N'GODIVA', NULL, N'Godiva											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1507, 3, N'GOO', NULL, N'Goo												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1508, 3, N'GOTRAN', NULL, N'GOTRAN											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1509, 3, N'GPSS', NULL, N'GPSS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1510, 3, N'GRAPHTALK', NULL, N'GraphTalk										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1511, 3, N'GRASS', NULL, N'GRASS											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1512, 3, N'GROOVY', NULL, N'Groovy											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1513, 3, N'HALS', NULL, N'HAL/S											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1514, 3, N'HAMILTON_C_SHELL', NULL, N'Hamilton C shell									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1515, 3, N'HARBOUR', NULL, N'Harbour											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1516, 3, N'HASKELL', NULL, N'Haskell											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1517, 3, N'HAXE', NULL, N'Haxe												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1518, 3, N'HIGH_LEVEL_ASSEMBLY', NULL, N'High Level Assembly								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1519, 3, N'HLSL', NULL, N'HLSL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1520, 3, N'HOP', NULL, N'Hop												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1521, 3, N'HOPE', NULL, N'Hope												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1522, 3, N'HUGO', NULL, N'Hugo												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1523, 3, N'HUME', NULL, N'Hume												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1524, 3, N'HYPERTALK', NULL, N'HyperTalk										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1525, 3, N'IBM_BASIC_ASSEMBLY_LANGUAGE', NULL, N'IBM Basic assembly language						  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1526, 3, N'IBM_HASCRIPT', NULL, N'IBM HAScript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1527, 3, N'IBM_INFORMIX-4GL', NULL, N'IBM Informix-4GL									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1528, 3, N'ICI', NULL, N'ICI												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1529, 3, N'ICON', NULL, N'Icon												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1530, 3, N'ID', NULL, N'Id												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1531, 3, N'IDL', NULL, N'IDL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1532, 3, N'IMP', NULL, N'IMP												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1533, 3, N'INFORM', NULL, N'Inform											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1534, 3, N'IO', NULL, N'Io												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1535, 3, N'IOKE', NULL, N'Ioke												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1536, 3, N'IPL', NULL, N'IPL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1537, 3, N'IPTSCRAE', NULL, N'IPTSCRAE											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1538, 3, N'ISLISP', NULL, N'ISLISP											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1539, 3, N'ISPF', NULL, N'ISPF												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1540, 3, N'ISWIM', NULL, N'ISWIM											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1541, 3, N'J', NULL, N'J												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1542, 3, N'J_', NULL, N'J#												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1543, 3, N'J++', NULL, N'J++												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1544, 3, N'JADE', NULL, N'JADE												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1545, 3, N'JAKO', NULL, N'Jako												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1546, 3, N'JAL', NULL, N'JAL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1547, 3, N'JANUS', NULL, N'Janus											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1548, 3, N'JASS', NULL, N'JASS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1549, 3, N'JAVA', NULL, N'Java												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1550, 3, N'JAVASCRIPT', NULL, N'JavaScript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1551, 3, N'JCL', NULL, N'JCL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1552, 3, N'JEAN', NULL, N'JEAN												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1553, 3, N'JOIN_JAVA', NULL, N'Join Java										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1554, 3, N'JOSS', NULL, N'JOSS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1555, 3, N'JOULE', NULL, N'Joule											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1556, 3, N'JOVIAL', NULL, N'JOVIAL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1557, 3, N'JOY', NULL, N'Joy												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1558, 3, N'JSCRIPT', NULL, N'JScript											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1559, 3, N'JAVAFX_SCRIPT', NULL, N'JavaFX Script									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1560, 3, N'JULIA', NULL, N'Julia											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1561, 3, N'K', NULL, N'K												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1562, 3, N'KALEIDOSCOPE', NULL, N'Kaleidoscope										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1563, 3, N'KAREL', NULL, N'Karel											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
GO
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1564, 3, N'KAREL++', NULL, N'Karel++											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1565, 3, N'KAYA', NULL, N'Kaya												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1566, 3, N'KEE', NULL, N'KEE												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1567, 3, N'KIF', NULL, N'KIF												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1568, 3, N'KRC', NULL, N'KRC												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1569, 3, N'KRL', NULL, N'KRL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1570, 3, N'KRL_KUKA_LENGUAJE_ROBOT', NULL, N'KRL (KUKA Lenguaje Robot)						  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1571, 3, N'KRYPTON', NULL, N'KRYPTON											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1572, 3, N'KSH', NULL, N'ksh												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1573, 3, N'L', NULL, N'L												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1574, 3, N'L__.NET', NULL, N'L# .NET											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1575, 3, N'LABVIEW', NULL, N'LabVIEW											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1576, 3, N'LADDER', NULL, N'Ladder											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1577, 3, N'LAGOONA', NULL, N'Lagoona											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1578, 3, N'LANSA', NULL, N'LANSA											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1579, 3, N'LASSO', NULL, N'Lasso											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1580, 3, N'LATEX', NULL, N'LaTeX											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1581, 3, N'LAVA', NULL, N'Lava												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1582, 3, N'LC-3', NULL, N'LC-3												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1583, 3, N'LEADWERKS_SCRIPT', NULL, N'Leadwerks Script									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1584, 3, N'LEDA', NULL, N'Leda												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1585, 3, N'LEGOSCRIPT', NULL, N'Legoscript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1586, 3, N'LIL', NULL, N'LIL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1587, 3, N'LILYPOND', NULL, N'LilyPond											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1588, 3, N'LIMBO', NULL, N'Limbo											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1589, 3, N'LIMNOR', NULL, N'Limnor											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1590, 3, N'LINC', NULL, N'LINC												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1591, 3, N'LINGO', NULL, N'Lingo											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1592, 3, N'LINOLEUM', NULL, N'Linoleum											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1593, 3, N'LIS', NULL, N'LIS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1594, 3, N'LISA', NULL, N'LISA												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1595, 3, N'LISAAC', NULL, N'Lisaac											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1596, 3, N'LISP_-_ISOIEC_13816', NULL, N'Lisp - ISO/IEC 13816								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1597, 3, N'LITE-C', NULL, N'Lite-C											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1598, 3, N'LITHE', NULL, N'Lithe											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1599, 3, N'LITTLE_B', NULL, N'Little b											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1600, 3, N'LOGO', NULL, N'Logo												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1601, 3, N'LOGTALK', NULL, N'Logtalk											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1602, 3, N'LPC', NULL, N'LPC												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1603, 3, N'LSE', NULL, N'LSE												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1604, 3, N'LSL', NULL, N'LSL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1605, 3, N'LIVECODE', NULL, N'LiveCode											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1606, 3, N'LUA', NULL, N'Lua												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1607, 3, N'LUCID', NULL, N'Lucid											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1608, 3, N'LUSTRE', NULL, N'Lustre											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1609, 3, N'LYAPAS', NULL, N'LYaPAS											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1610, 3, N'LYNX', NULL, N'Lynx												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1611, 3, N'M', NULL, N'M												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1612, 3, N'M2001', NULL, N'M2001											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1613, 3, N'M4', NULL, N'M4												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1614, 3, N'MACHINE_CODE', NULL, N'Machine code										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1615, 3, N'MAD_MICHIGAN_ALGORITHM_DECODER', NULL, N'MAD (Michigan Algorithm Decoder)					  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1616, 3, N'MADI', NULL, N'MAD/I											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1617, 3, N'MAGIK', NULL, N'Magik											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1618, 3, N'MAGMA', NULL, N'Magma											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1619, 3, N'MAKE', NULL, N'make												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1620, 3, N'MAPLE', NULL, N'Maple											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1621, 3, N'MAPPER_UNISYSSPERRY_AHORA_PARTE_DE_BIS', NULL, N'MAPPER (Unisys/Sperry) ahora parte de BIS		  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1622, 3, N'MARK-IV_STERLINGINFORMATICS', NULL, N'MARK-IV (Sterling/Informatics)					  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1623, 3, N'MARY', NULL, N'Mary												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1624, 3, N'MASM_MICROSOFT_ASSEMBLY_X86', NULL, N'MASM Microsoft Assembly x86						  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1625, 3, N'MATHEMATICA', NULL, N'Mathematica										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1626, 3, N'MATLAB', NULL, N'MATLAB											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1627, 3, N'MAXIMA_VER_TAMBIÉN_MACSYMA', NULL, N'Maxima (ver también Macsyma)						  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1628, 3, N'MAX_MAX_MSP_-_ENTORNO_DE_PROGRAMACIÓN_GRÁFICO', NULL, N'Max (Max Msp - Entorno de programación gráfico)	  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1629, 3, N'MAXSCRIPT_LENGUAJE_INTERNO_DE_3D_STUDIO_MAX', NULL, N'MaxScript lenguaje interno de 3D Studio Max		  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1630, 3, N'MAYA_MEL', NULL, N'Maya (MEL)										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1631, 3, N'MDL', NULL, N'MDL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1632, 3, N'MERCURY', NULL, N'Mercury											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1633, 3, N'MESA', NULL, N'Mesa												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1634, 3, N'METACARD', NULL, N'Metacard											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1635, 3, N'METAFONT', NULL, N'Metafont											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1636, 3, N'METAL', NULL, N'MetaL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1637, 3, N'MICROCODE', NULL, N'Microcode										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1638, 3, N'MICROSCRIPT', NULL, N'MicroScript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1639, 3, N'MIIS', NULL, N'MIIS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1640, 3, N'MILLSCRIPT', NULL, N'MillScript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1641, 3, N'MIMIC', NULL, N'MIMIC											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1642, 3, N'MIRAH', NULL, N'Mirah											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1643, 3, N'MIRANDA', NULL, N'Miranda											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1644, 3, N'MIVA_SCRIPT', NULL, N'MIVA Script										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1645, 3, N'ML', NULL, N'ML												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1646, 3, N'MOBY', NULL, N'Moby												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1647, 3, N'MODEL_204', NULL, N'Model 204										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1648, 3, N'MODELICA', NULL, N'Modelica											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1649, 3, N'MODULA', NULL, N'Modula											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1650, 3, N'MODULA-2', NULL, N'Modula-2											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1651, 3, N'MODULA-3', NULL, N'Modula-3											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1652, 3, N'MOHOL', NULL, N'Mohol											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1653, 3, N'MOO', NULL, N'MOO												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1654, 3, N'MORTRAN', NULL, N'Mortran											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1655, 3, N'MOUSE', NULL, N'Mouse											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1656, 3, N'MPD', NULL, N'MPD												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1657, 3, N'MSIL_-_NOMBRE_DEPRECADO_POR_CIL', NULL, N'MSIL - nombre deprecado por CIL					  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1658, 3, N'MSL', NULL, N'MSL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1659, 3, N'MUMPS', NULL, N'MUMPS											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1660, 3, N'NAPIER88', NULL, N'Napier88											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1661, 3, N'NASM', NULL, N'NASM												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1662, 3, N'NATURAL', NULL, N'NATURAL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1663, 3, N'NEKO', NULL, N'Neko												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
GO
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1664, 3, N'NEMERLE', NULL, N'Nemerle											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1665, 3, N'NESL', NULL, N'NESL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1666, 3, N'NET.DATA', NULL, N'Net.Data											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1667, 3, N'NETLOGO', NULL, N'NetLogo											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1668, 3, N'NETREXX', NULL, N'NetRexx											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1669, 3, N'NEWLISP', NULL, N'NewLISP											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1670, 3, N'NEWP', NULL, N'NEWP												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1671, 3, N'NEWSPEAK', NULL, N'Newspeak											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1672, 3, N'NEWTONSCRIPT', NULL, N'NewtonScript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1673, 3, N'NGL', NULL, N'NGL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1674, 3, N'NIAL', NULL, N'Nial												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1675, 3, N'NICE', NULL, N'Nice												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1676, 3, N'NICKLE', NULL, N'Nickle											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1677, 3, N'NPL', NULL, N'NPL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1678, 3, N'NOT_EXACTLY_C_NXC', NULL, N'Not eXactly C (NXC)								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1679, 3, N'NOT_QUITE_C_NQC', NULL, N'Not Quite C (NQC)								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1680, 3, N'NU', NULL, N'Nu												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1681, 3, N'NSIS', NULL, N'NSIS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1682, 3, N'OXML', NULL, N'o:XML											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1683, 3, N'OAK', NULL, N'Oak												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1684, 3, N'OBERON', NULL, N'Oberon											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1685, 3, N'OBIX', NULL, N'Obix												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1686, 3, N'OBJ2', NULL, N'OBJ2												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1687, 3, N'OBJECT_LISP', NULL, N'Object Lisp										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1688, 3, N'OBJECTLOGO', NULL, N'ObjectLOGO										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1689, 3, N'OBJECT_REXX', NULL, N'Object REXX										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1690, 3, N'OBJECT_PASCAL', NULL, N'Object Pascal									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1691, 3, N'OBJECTIVE-C', NULL, N'Objective-C										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1692, 3, N'OBJECTIVE-J', NULL, N'Objective-J										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1693, 3, N'OBLIQ', NULL, N'Obliq											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1694, 3, N'OBOL', NULL, N'Obol												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1695, 3, N'OCAML', NULL, N'OCaml											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1696, 3, N'OCCAM', NULL, N'occam											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1697, 3, N'OCCAM-P', NULL, N'occam-p											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1698, 3, N'OCTAVE', NULL, N'Octave											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1699, 3, N'OMNIMARK', NULL, N'OmniMark											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1700, 3, N'ONYX', NULL, N'Onyx												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1701, 3, N'OPA', NULL, N'Opa												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1702, 3, N'OPAL', NULL, N'Opal												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1703, 3, N'OPENEDGE_ABL', NULL, N'OpenEdge ABL										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1704, 3, N'OPL', NULL, N'OPL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1705, 3, N'OPS5', NULL, N'OPS5												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1706, 3, N'OPTIMJ', NULL, N'OptimJ											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1707, 3, N'ORC', NULL, N'Orc												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1708, 3, N'ORCAMODULA-2', NULL, N'ORCA/Modula-2									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1709, 3, N'ORIEL', NULL, N'Oriel											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1710, 3, N'ORWELL', NULL, N'Orwell											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1711, 3, N'OXYGENE', NULL, N'Oxygene											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1712, 3, N'OZ', NULL, N'Oz												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1713, 3, N'P_', NULL, N'P#												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1714, 3, N'PARIGP', NULL, N'PARI/GP											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1715, 3, N'PASCAL_-_ISO_7185', NULL, N'Pascal - ISO 7185								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1716, 3, N'PAUSCAL_EN_ESPAÑOL', NULL, N'Pauscal en español								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1717, 3, N'PAWN', NULL, N'Pawn												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1718, 3, N'PCASTL', NULL, N'PCASTL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1719, 3, N'PCF', NULL, N'PCF												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1720, 3, N'PEARL', NULL, N'PEARL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1721, 3, N'PEOPLECODE', NULL, N'PeopleCode										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1722, 3, N'PERL', NULL, N'Perl												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1723, 3, N'PDL', NULL, N'PDL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1724, 3, N'PHP', NULL, N'PHP												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1725, 3, N'PHROGRAM', NULL, N'Phrogram											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1726, 3, N'PICO', NULL, N'Pico												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1727, 3, N'PICT', NULL, N'Pict												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1728, 3, N'PIKE', NULL, N'Pike												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1729, 3, N'PIKT', NULL, N'PIKT												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1730, 3, N'PILOT', NULL, N'PILOT											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1731, 3, N'PIZZA', NULL, N'Pizza											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1732, 3, N'PL-11', NULL, N'PL-11											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1733, 3, N'PL0', NULL, N'PL/0												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1734, 3, N'PLB', NULL, N'PL/B												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1735, 3, N'PLC', NULL, N'PL/C												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1736, 3, N'PLI_-_ISO_6160', NULL, N'PL/I - ISO 6160									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1737, 3, N'PLM', NULL, N'PL/M												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1738, 3, N'PLP', NULL, N'PL/P												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1739, 3, N'PLSQL', NULL, N'PL/SQL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1740, 3, N'PL360', NULL, N'PL360											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1741, 3, N'PLANC', NULL, N'PLANC											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1742, 3, N'PLANKALKÜL', NULL, N'Plankalkül										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1743, 3, N'PLEX', NULL, N'PLEX												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1744, 3, N'PLEXIL', NULL, N'PLEXIL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1745, 3, N'PLUS', NULL, N'Plus												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1746, 3, N'POP-11', NULL, N'POP-11											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1747, 3, N'POSTSCRIPT', NULL, N'PostScript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1748, 3, N'PORTABLE', NULL, N'PortablE											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1749, 3, N'POWERHOUSE', NULL, N'Powerhouse										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1750, 3, N'POWERBUILDER', NULL, N'PowerBuilder										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1751, 3, N'POWERSHELL', NULL, N'PowerShell										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1752, 3, N'PPL', NULL, N'PPL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1753, 3, N'PROCESSING', NULL, N'Processing										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1754, 3, N'PROCESSING.JS', NULL, N'Processing.js									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1755, 3, N'PROGRAPH', NULL, N'Prograph											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1756, 3, N'PROIV', NULL, N'PROIV											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1757, 3, N'PROLOG', NULL, N'Prolog											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1758, 3, N'VISUAL_PROLOG', NULL, N'Visual Prolog									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1759, 3, N'PROMELA', NULL, N'Promela											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1760, 3, N'PROTEL', NULL, N'PROTEL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1761, 3, N'PROVIDEX', NULL, N'ProvideX											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1762, 3, N'PROC', NULL, N'Pro*C											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1763, 3, N'PURE', NULL, N'Pure												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
GO
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1764, 3, N'PYTHON', NULL, N'Python											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1765, 3, N'Q_LENGUAJE_DE_PROGRAMACIÓN_ECUACIONAL', NULL, N'Q (lenguaje de programación ecuacional)			  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1766, 3, N'Q_LENGUAJE_DE_PROGRAMACIÓN_DE_KX_SYSTEMS', NULL, N'Q (lenguaje de programación de Kx Systems)		  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1767, 3, N'QBASIC', NULL, N'QBasic											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1768, 3, N'QI', NULL, N'Qi												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1769, 3, N'QTSCRIPT', NULL, N'QtScript											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1770, 3, N'QUAKEC', NULL, N'QuakeC											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1771, 3, N'QPL', NULL, N'QPL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1772, 3, N'R', NULL, N'R												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1773, 3, N'R++', NULL, N'R++												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1774, 3, N'RACKET', NULL, N'Racket											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1775, 3, N'RAPID', NULL, N'RAPID											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1776, 3, N'RAPIRA', NULL, N'Rapira											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1777, 3, N'RATFIV', NULL, N'Ratfiv											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1778, 3, N'RATFOR', NULL, N'Ratfor											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1779, 3, N'RC', NULL, N'rc												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1780, 3, N'REALBASIC', NULL, N'Realbasic										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1781, 3, N'REBOL', NULL, N'REBOL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1782, 3, N'REDCODE', NULL, N'Redcode											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1783, 3, N'REFAL', NULL, N'REFAL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1784, 3, N'REIA', NULL, N'Reia												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1785, 3, N'REVOLUTION', NULL, N'Revolution										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1786, 3, N'REX', NULL, N'rex												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1787, 3, N'REXX', NULL, N'REXX												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1788, 3, N'RLAB', NULL, N'Rlab												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1789, 3, N'ROOP', NULL, N'ROOP												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1790, 3, N'RPG', NULL, N'RPG												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1791, 3, N'RPL', NULL, N'RPL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1792, 3, N'RSL', NULL, N'RSL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1793, 3, N'RTL2', NULL, N'RTL/2											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1794, 3, N'RUBY', NULL, N'Ruby												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1795, 3, N'RUST', NULL, N'Rust												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1796, 3, N'S', NULL, N'S												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1797, 3, N'S2', NULL, N'S2												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1798, 3, N'S3', NULL, N'S3												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1799, 3, N'S-LANG', NULL, N'S-Lang											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1800, 3, N'MIRC_SCRIPTING', NULL, N'mIRC scripting									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1801, 3, N'S-PLUS', NULL, N'S-PLUS											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1802, 3, N'SA-C', NULL, N'SA-C												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1803, 3, N'SABRETALK', NULL, N'SabreTalk										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1804, 3, N'SAIL', NULL, N'SAIL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1805, 3, N'SALSA', NULL, N'SALSA											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1806, 3, N'SAM76', NULL, N'SAM76											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1807, 3, N'SAS', NULL, N'SAS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1808, 3, N'SASL', NULL, N'SASL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1809, 3, N'SATHER', NULL, N'Sather											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1810, 3, N'SAWZALL', NULL, N'Sawzall											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1811, 3, N'SBL', NULL, N'SBL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1812, 3, N'SCALA', NULL, N'Scala											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1813, 3, N'SCHEME', NULL, N'Scheme											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1814, 3, N'SCILAB', NULL, N'Scilab											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1815, 3, N'SCRATCH', NULL, N'Scratch											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1816, 3, N'SCRIPT.NET', NULL, N'Script.NET										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1817, 3, N'SED', NULL, N'Sed												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1818, 3, N'SEED7', NULL, N'Seed7											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1819, 3, N'SELF', NULL, N'Self												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1820, 3, N'SENSETALK', NULL, N'SenseTalk										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1821, 3, N'SETL', NULL, N'SETL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1822, 3, N'SHIFT_SCRIPT', NULL, N'Shift Script										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1823, 3, N'SIMPLE', NULL, N'SiMPLE											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1824, 3, N'SIMPOL', NULL, N'SIMPOL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1825, 3, N'SIMSCRIPT', NULL, N'SIMSCRIPT										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1826, 3, N'SIMULA', NULL, N'Simula											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1827, 3, N'SIMULINK', NULL, N'Simulink											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1828, 3, N'SISAL', NULL, N'SISAL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1829, 3, N'SLIP', NULL, N'SLIP												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1830, 3, N'SMALL', NULL, N'SMALL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1831, 3, N'SMALLTALK', NULL, N'Smalltalk										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1832, 3, N'SMALL_BASIC', NULL, N'Small Basic										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1833, 3, N'SML', NULL, N'SML												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1834, 3, N'SNOBOLSPITBOL', NULL, N'SNOBOL(SPITBOL)									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1835, 3, N'SNOWBALL', NULL, N'Snowball											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1836, 3, N'SOL', NULL, N'SOL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1837, 3, N'SPAN', NULL, N'Span												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1838, 3, N'SPARK', NULL, N'SPARK											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1839, 3, N'SPIN', NULL, N'SPIN												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1840, 3, N'SPK', NULL, N'SP/k												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1841, 3, N'SPS', NULL, N'SPS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1842, 3, N'SQUEAK', NULL, N'Squeak											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1843, 3, N'SQUIRREL', NULL, N'Squirrel											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1844, 3, N'SR', NULL, N'SR												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1845, 3, N'SSL', NULL, N'S/SL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1846, 3, N'STARLOGO', NULL, N'Starlogo											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1847, 3, N'STRAND', NULL, N'Strand											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1848, 3, N'STATA', NULL, N'STATA											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1849, 3, N'STATEFLOW', NULL, N'Stateflow										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1850, 3, N'SUBTEXT', NULL, N'Subtext											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1851, 3, N'SUNEIDO', NULL, N'Suneido											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1852, 3, N'SUPERCOLLIDER', NULL, N'SuperCollider									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1853, 3, N'SUPERTALK', NULL, N'SuperTalk										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1854, 3, N'SYMPL', NULL, N'SYMPL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1855, 3, N'SYNCCHARTS', NULL, N'SyncCharts										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1856, 3, N'SYSTEMVERILOG', NULL, N'SystemVerilog									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1857, 3, N'T', NULL, N'T												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1858, 3, N'TACL', NULL, N'TACL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1859, 3, N'TACPOL', NULL, N'TACPOL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1860, 3, N'TADS', NULL, N'TADS												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1861, 3, N'TAL', NULL, N'TAL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1862, 3, N'TCL', NULL, N'Tcl												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1863, 3, N'TEA', NULL, N'Tea												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
GO
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1864, 3, N'TECO', NULL, N'TECO												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1865, 3, N'TELCOMP', NULL, N'TELCOMP											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1866, 3, N'TEX', NULL, N'TEX												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1867, 3, N'TIE', NULL, N'TIE												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1868, 3, N'TIMBER', NULL, N'Timber											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1869, 3, N'TMG', NULL, N'TMG												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1870, 3, N'TOM', NULL, N'Tom												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1871, 3, N'TOPSPEED', NULL, N'Topspeed											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1872, 3, N'TPU', NULL, N'TPU												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1873, 3, N'TRAC', NULL, N'Trac												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1874, 3, N'T-SQL', NULL, N'T-SQL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1875, 3, N'TTCN', NULL, N'TTCN												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1876, 3, N'TURING', NULL, N'Turing											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1877, 3, N'TUTOR', NULL, N'TUTOR											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1878, 3, N'TXL', NULL, N'TXL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1879, 3, N'TYPESCRIPT', NULL, N'TypeScript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1880, 3, N'UBERCODE', NULL, N'Ubercode											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1881, 3, N'UCSD_PASCAL', NULL, N'UCSD Pascal										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1882, 3, N'UNICON', NULL, N'Unicon											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1883, 3, N'UNIFACE', NULL, N'Uniface											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1884, 3, N'UNITY', NULL, N'UNITY											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1885, 3, N'UNIX_SHELL', NULL, N'Unix shell										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1886, 3, N'UNREALSCRIPT', NULL, N'UnrealScript										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1887, 3, N'VALA', NULL, N'Vala												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1888, 3, N'VBA', NULL, N'VBA												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1889, 3, N'VBSCRIPT', NULL, N'VBScript											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1890, 3, N'VERILOG', NULL, N'Verilog											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1891, 3, N'VHDL', NULL, N'VHDL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1892, 3, N'VISUAL_BASIC', NULL, N'Visual Basic										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1893, 3, N'VISUAL_BASIC_.NET', NULL, N'Visual Basic .NET								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1894, 3, N'VISUAL_C_', NULL, N'Visual C#										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1895, 3, N'VISUAL_DATAFLEX', NULL, N'Visual DataFlex									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1896, 3, N'VISUAL_DIALOGSCRIPT', NULL, N'Visual DialogScript								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1897, 3, N'VISUAL_FORTRAN', NULL, N'Visual Fortran									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1898, 3, N'VISUAL_FOXPRO', NULL, N'Visual FoxPro									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1899, 3, N'VISUAL_J++', NULL, N'Visual J++										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1900, 3, N'VISUAL_J_', NULL, N'Visual J#										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1901, 3, N'VISUAL_OBJECTS', NULL, N'Visual Objects									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1902, 3, N'VSXU', NULL, N'VSXu												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1903, 3, N'VVVV', NULL, N'Vvvv												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1904, 3, N'WATFIV_WATFOR', NULL, N'WATFIV, WATFOR									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1905, 3, N'WEBDNA', NULL, N'WebDNA											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1906, 3, N'WEBQL', NULL, N'WebQL											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1907, 3, N'WINDOWS_POWERSHELL', NULL, N'Windows PowerShell								  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1908, 3, N'WINBATCH', NULL, N'Winbatch											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1909, 3, N'X++', NULL, N'X++												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1910, 3, N'X10', NULL, N'X10												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1911, 3, N'XBL', NULL, N'XBL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1912, 3, N'XC_APROVECHA_XMOS_ARCHITECTURE', NULL, N'XC (aprovecha XMOS architecture)					  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1913, 3, N'XHARBOUR', NULL, N'xHarbour											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1914, 3, N'XL', NULL, N'XL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1915, 3, N'XOTCL', NULL, N'XOTcl											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1916, 3, N'XPL', NULL, N'XPL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1917, 3, N'XPL0', NULL, N'XPL0												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1918, 3, N'XQUERY', NULL, N'XQuery											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1919, 3, N'XSB', NULL, N'XSB												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1920, 3, N'XSLT_-_VER_XPATH', NULL, N'XSLT - Ver XPath									  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1921, 3, N'YORICK', NULL, N'Yorick											  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1922, 3, N'YQL', NULL, N'YQL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1923, 3, N'Z_NOTATION', NULL, N'Z notation										  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1924, 3, N'ZENO', NULL, N'Zeno												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1925, 3, N'ZOPL', NULL, N'ZOPL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1926, 3, N'ZPL', NULL, N'ZPL												  ', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1927, 3, N'BBX', NULL, N'Visual Pro5', NULL, 1, 1, 1, CAST(0x0000A418012459E6 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1928, 4, N'MODULO_FACTURACION', NULL, N'Facturación', NULL, 1, 1, 1, CAST(0x0000A41801285044 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1929, 4, N'MODULO_CONTABILIDAD', NULL, N'Contabilidad', NULL, 1, 1, 1, CAST(0x0000A41801285044 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1930, 4, N'MODULO_ACTIVO_FIJO', NULL, N'Activo Fijo', NULL, 1, 1, 1, CAST(0x0000A41801285044 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1931, 4, N'MODULO_INVENTARIO', NULL, N'Iinventario', NULL, 1, 1, 1, CAST(0x0000A41801285044 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1932, 4, N'MODULO_FISCAL', NULL, N'Fiscal', NULL, 1, 1, 1, CAST(0x0000A41801285044 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1934, 5, N'PASSWORD_ACTIVO', NULL, N'Activo', N'Password a utilizar para los accesos solo puede  existir uno y solo un password activo', 1, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1935, 5, N'PASSWORD_INACTIVO', NULL, N'Inactivo', N'password que esta inactivo por el usuario master o el administrador.', 2, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1936, 5, N'PASSWORD_REVOCADO', NULL, N'Revocado', N'Password que esta inactivo pero por un cambio de contrasena.', 3, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1937, 5, N'PASSWORD_CANCELADO', NULL, N'Cancelado', N'Password que esta inactivo pero por politicas.', 4, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1938, 6, N'USUARIO', NULL, N'Usuario', NULL, 1, 1, 1, CAST(0x0000A41901093665 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1939, 6, N'PROGRAMA', NULL, N'Programa', NULL, 2, 1, 1, CAST(0x0000A41901093665 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1940, 7, N'NORMAL', NULL, N'Normal', N'acceso normal, puede accesar a todos los programas que tiene asignados', 1, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1942, 7, N'ADMINISTRADOR', NULL, N'Administrador', N'tiene total acceso a los programas puede crear usuarios de nivel ugual o inferior', 2, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1943, 7, N'MASTER', NULL, N'Master', N'tiene total acceso a los programas puede crear usuarios de nivel ugual o inferior, puede ejecutar programas sin necesidad de una clave', 3, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1944, 8, N'MESSAGE_ASTERISK', NULL, N'Asterisk', N'', 1, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1945, 8, N'MESSAGE_ERROR', NULL, N'Error', N'', 2, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1946, 8, N'MESSAGE_EXCLAMATION', NULL, N'Exclamacion', N'', 3, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1947, 8, N'MESSAGE_HAND', NULL, N'Manejo', N'', 4, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1948, 8, N'MESSAGE_INFORMATION', NULL, N'Informacion', N'', 5, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1949, 8, N'MESSAGE_NONE', NULL, N'Ninguno', N'', 6, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1950, 8, N'MESSAGE_QUESTION', NULL, N'Pregunta', N'', 7, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1951, 8, N'MESSAGE_STOP', NULL, N'Parar', N'', 8, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1952, 8, N'MESSAGE_WARNING', NULL, N'Advertencia', N'', 9, 1, 1, CAST(0x0000A41901052E32 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1953, 9, N'USER_ENABLED', NULL, N'Enabled', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1954, 9, N'USER_DISABLED', NULL, N'Disabled', NULL, 2, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1956, 12, N'OBJETO', NULL, N'Objeto', NULL, 1, 0, 1, CAST(0x0000A418010CF2A6 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1957, 12, N'PERSONA', NULL, N'Persona', NULL, 2, 1, 1, CAST(0x0000A418010CF2A6 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1958, 12, N'BANCO', NULL, N'Banco', NULL, 3, 1, 1, CAST(0x0000A418010CF2A6 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1959, 12, N'COMPANIA', NULL, N'Compañia', NULL, 4, 1, 1, CAST(0x0000A418010CF2A6 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1960, 12, N'CLIENTE', NULL, N'Cliente', NULL, 5, 1, 1, CAST(0x0000A418010CF2A6 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1961, 12, N'ARTICULO', NULL, N'Artículo', NULL, 6, 1, 1, CAST(0x0000A418010CF2A6 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1962, 12, N'ALMACEN', NULL, N'Almacén', NULL, 7, 1, 1, CAST(0x0000A418010CF2A6 AS DateTime), NULL, NULL)
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1963, 13, N'SEXO_MASCULINO', NULL, N'Masculino', NULL, 2, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
INSERT [dbo].[detail] ([detail_id_pk], [header_id_fk], [name], [code], [display_name], [desc], [order], [active], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1964, 13, N'SEXO_FEMENINO', NULL, N'Femenino', NULL, 1, 1, 1, CAST(0x0000A418011A3E36 AS DateTime), 1, CAST(0x0000A418011C6DF9 AS DateTime))
SET IDENTITY_INSERT [dbo].[detail] OFF
SET IDENTITY_INSERT [dbo].[header] ON 

INSERT [dbo].[header] ([header_id_pk], [name], [area], [created_by], [created_date]) VALUES (1, N'PESTANAS', 1, 1, CAST(0x0000A418010C3060 AS DateTime))
INSERT [dbo].[header] ([header_id_pk], [name], [area], [created_by], [created_date]) VALUES (3, N'LENGUAJES_DE_PROGRAMACION', 1, 1, CAST(0x0000A418011745B0 AS DateTime))
INSERT [dbo].[header] ([header_id_pk], [name], [area], [created_by], [created_date]) VALUES (4, N'MODULOS', 1, 1, CAST(0x0000A4180128165D AS DateTime))
INSERT [dbo].[header] ([header_id_pk], [name], [area], [created_by], [created_date]) VALUES (5, N'ESTATUS_PASSWORD', 1, 1, CAST(0x0000A419010345DD AS DateTime))
INSERT [dbo].[header] ([header_id_pk], [name], [area], [created_by], [created_date]) VALUES (6, N'TIPO_OBJETO', 1, 1, CAST(0x0000A419010356EF AS DateTime))
INSERT [dbo].[header] ([header_id_pk], [name], [area], [created_by], [created_date]) VALUES (7, N'ACCESS', 1, 1, CAST(0x0000A419010356EF AS DateTime))
INSERT [dbo].[header] ([header_id_pk], [name], [area], [created_by], [created_date]) VALUES (8, N'TIPO_MENSAJE', 1, 1, CAST(0x0000A42700C54CA5 AS DateTime))
INSERT [dbo].[header] ([header_id_pk], [name], [area], [created_by], [created_date]) VALUES (9, N'ESTATUS_USUARIO', 1, 1, CAST(0x0000A42700C54CA5 AS DateTime))
INSERT [dbo].[header] ([header_id_pk], [name], [area], [created_by], [created_date]) VALUES (12, N'TIPO_OBJETO', 1, 1, CAST(0x0000A42E015C4D64 AS DateTime))
INSERT [dbo].[header] ([header_id_pk], [name], [area], [created_by], [created_date]) VALUES (13, N'TIPO_SEXO', 1, 1, CAST(0x0000A42E015C4D64 AS DateTime))
SET IDENTITY_INSERT [dbo].[header] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [uq_cu_branch]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_branch]') AND name = N'uq_cu_branch')
ALTER TABLE [dbo].[cu_branch] ADD  CONSTRAINT [uq_cu_branch] UNIQUE NONCLUSTERED 
(
	[company_id_fk] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [uq_cu_company]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_company]') AND name = N'uq_cu_company')
ALTER TABLE [dbo].[cu_company] ADD  CONSTRAINT [uq_cu_company] UNIQUE NONCLUSTERED 
(
	[code] ASC,
	[db_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [uq_cu_message]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_message]') AND name = N'uq_cu_message')
ALTER TABLE [dbo].[cu_message] ADD  CONSTRAINT [uq_cu_message] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [uq_cu_permissions]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_permission]') AND name = N'uq_cu_permissions')
ALTER TABLE [dbo].[cu_permission] ADD  CONSTRAINT [uq_cu_permissions] UNIQUE NONCLUSTERED 
(
	[program_id_fk] ASC,
	[user_id_fk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [uq_cu_profile]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_profile]') AND name = N'uq_cu_profile')
ALTER TABLE [dbo].[cu_profile] ADD  CONSTRAINT [uq_cu_profile] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [uq_cu_program]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_program]') AND name = N'uq_cu_program')
ALTER TABLE [dbo].[cu_program] ADD  CONSTRAINT [uq_cu_program] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [uq_cu_user]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cu_user]') AND name = N'uq_cu_user')
ALTER TABLE [dbo].[cu_user] ADD  CONSTRAINT [uq_cu_user] UNIQUE NONCLUSTERED 
(
	[company_id_fk] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [uq_detail]    Script Date: 07/02/2015 9:28:50 a. m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[detail]') AND name = N'uq_detail')
ALTER TABLE [dbo].[detail] ADD  CONSTRAINT [uq_detail] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_branch_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_branch] ADD  CONSTRAINT [DF_cu_branch_created_date]  DEFAULT (getdate()) FOR [created_date]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_company_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_company] ADD  CONSTRAINT [DF_cu_company_created_date]  DEFAULT (getdate()) FOR [created_date]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_message_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_message] ADD  CONSTRAINT [DF_message_created_date]  DEFAULT (getdate()) FOR [created_date]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_password_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_password] ADD  CONSTRAINT [DF_cu_password_created_date]  DEFAULT (getdate()) FOR [created_date]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_permission_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_permission] ADD  CONSTRAINT [DF_cu_permission_active]  DEFAULT ('1') FOR [active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_permissions_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_permission] ADD  CONSTRAINT [DF_cu_permissions_created_date]  DEFAULT (getdate()) FOR [created_date]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_profile_order]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_profile] ADD  CONSTRAINT [DF_cu_profile_order]  DEFAULT ((1)) FOR [order]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_profile_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_profile] ADD  CONSTRAINT [DF_cu_profile_active]  DEFAULT ('1') FOR [active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_profile_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_profile] ADD  CONSTRAINT [DF_cu_profile_created_date]  DEFAULT (getdate()) FOR [created_date]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_program_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_program] ADD  CONSTRAINT [DF_cu_program_active]  DEFAULT ('1') FOR [active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_program_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_program] ADD  CONSTRAINT [DF_cu_program_created_date]  DEFAULT (getdate()) FOR [created_date]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_user_person_id_fk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_user] ADD  CONSTRAINT [DF_cu_user_person_id_fk]  DEFAULT ((0)) FOR [person_id_fk]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_user_access_id_fk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_user] ADD  CONSTRAINT [DF_cu_user_access_id_fk]  DEFAULT ((0)) FOR [access_id_fk]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_usuario_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cu_user] ADD  CONSTRAINT [DF_cu_usuario_created_date]  DEFAULT (getdate()) FOR [created_date]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_detail_order]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[detail] ADD  CONSTRAINT [DF_cu_detail_order]  DEFAULT ((1)) FOR [order]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_detail_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[detail] ADD  CONSTRAINT [DF_cu_detail_active]  DEFAULT ('1') FOR [active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_detail_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[detail] ADD  CONSTRAINT [DF_detail_created_date]  DEFAULT (getdate()) FOR [created_date]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cu_header_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[header] ADD  CONSTRAINT [DF_cu_header_created_date]  DEFAULT (getdate()) FOR [created_date]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_object_order]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[object] ADD  CONSTRAINT [DF_object_order]  DEFAULT ((1)) FOR [order]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_object_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[object] ADD  CONSTRAINT [DF_object_active]  DEFAULT ('1') FOR [active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_object_created_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[object] ADD  CONSTRAINT [DF_object_created_date]  DEFAULT (getdate()) FOR [created_date]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cu_permission_cu_program]') AND parent_object_id = OBJECT_ID(N'[dbo].[cu_permission]'))
ALTER TABLE [dbo].[cu_permission]  WITH CHECK ADD  CONSTRAINT [fk_cu_permission_cu_program] FOREIGN KEY([program_id_fk])
REFERENCES [dbo].[cu_program] ([program_id_pk])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cu_permission_cu_program]') AND parent_object_id = OBJECT_ID(N'[dbo].[cu_permission]'))
ALTER TABLE [dbo].[cu_permission] CHECK CONSTRAINT [fk_cu_permission_cu_program]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cu_permission_cu_user]') AND parent_object_id = OBJECT_ID(N'[dbo].[cu_permission]'))
ALTER TABLE [dbo].[cu_permission]  WITH CHECK ADD  CONSTRAINT [fk_cu_permission_cu_user] FOREIGN KEY([user_id_fk])
REFERENCES [dbo].[cu_user] ([user_id_pk])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cu_permission_cu_user]') AND parent_object_id = OBJECT_ID(N'[dbo].[cu_permission]'))
ALTER TABLE [dbo].[cu_permission] CHECK CONSTRAINT [fk_cu_permission_cu_user]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cu_detail_cu_detail]') AND parent_object_id = OBJECT_ID(N'[dbo].[detail]'))
ALTER TABLE [dbo].[detail]  WITH CHECK ADD  CONSTRAINT [fk_cu_detail_cu_detail] FOREIGN KEY([header_id_fk])
REFERENCES [dbo].[header] ([header_id_pk])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cu_detail_cu_detail]') AND parent_object_id = OBJECT_ID(N'[dbo].[detail]'))
ALTER TABLE [dbo].[detail] CHECK CONSTRAINT [fk_cu_detail_cu_detail]
GO
