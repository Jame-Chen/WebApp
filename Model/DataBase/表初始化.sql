/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2019/4/16 17:19:47                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SysDepartment') and o.name = 'FK_SYSDEPAR_REFERENCE_SYSDEPAR')
alter table dbo.SysDepartment
   drop constraint FK_SYSDEPAR_REFERENCE_SYSDEPAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysDocumentSysDepartment') and o.name = 'FK_SYSDOCUM_REFERENCE_SYSDEPAR')
alter table SysDocumentSysDepartment
   drop constraint FK_SYSDOCUM_REFERENCE_SYSDEPAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysDocumentSysDepartment') and o.name = 'FK_SYSDOCUM_REFERENCE_SYSDOCUM2')
alter table SysDocumentSysDepartment
   drop constraint FK_SYSDOCUM_REFERENCE_SYSDOCUM2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysDocumentSysPerson') and o.name = 'FK_SYSDOCUM_REFERENCE_SYSPERSO')
alter table SysDocumentSysPerson
   drop constraint FK_SYSDOCUM_REFERENCE_SYSPERSO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysDocumentSysPerson') and o.name = 'FK_SYSDOCUM_REFERENCE_SYSDOCUM3')
alter table SysDocumentSysPerson
   drop constraint FK_SYSDOCUM_REFERENCE_SYSDOCUM3
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysDocumentTalk') and o.name = 'FK_SYSDOCUM_REFERENCE_SYSDOCUM')
alter table SysDocumentTalk
   drop constraint FK_SYSDOCUM_REFERENCE_SYSDOCUM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysEmail') and o.name = 'FK_SYSEMAIL_REFERENCE_SYSEMAIL')
alter table SysEmail
   drop constraint FK_SYSEMAIL_REFERENCE_SYSEMAIL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SysField') and o.name = 'FK_SYSFIELD_REFERENCE_SYSFIELD')
alter table dbo.SysField
   drop constraint FK_SYSFIELD_REFERENCE_SYSFIELD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SysMenu') and o.name = 'FK_SYSMENU_REFERENCE_SYSMENU')
alter table dbo.SysMenu
   drop constraint FK_SYSMENU_REFERENCE_SYSMENU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMenuSysOperation') and o.name = 'FK_SYSMENUS_REFERENCE_SYSMENU')
alter table SysMenuSysOperation
   drop constraint FK_SYSMENUS_REFERENCE_SYSMENU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMenuSysOperation') and o.name = 'FK_SYSMENUS_REFERENCE_SYSOPERA')
alter table SysMenuSysOperation
   drop constraint FK_SYSMENUS_REFERENCE_SYSOPERA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMenuSysRoleSysOperation') and o.name = 'FK_SYSMENUS_REFERENCE_SYSOPERA2')
alter table SysMenuSysRoleSysOperation
   drop constraint FK_SYSMENUS_REFERENCE_SYSOPERA2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMenuSysRoleSysOperation') and o.name = 'FK_SYSMENUS_REFERENCE_SYSROLE')
alter table SysMenuSysRoleSysOperation
   drop constraint FK_SYSMENUS_REFERENCE_SYSROLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMenuSysRoleSysOperation') and o.name = 'FK_SYSMENUS_REFERENCE_SYSMENU2')
alter table SysMenuSysRoleSysOperation
   drop constraint FK_SYSMENUS_REFERENCE_SYSMENU2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMessage') and o.name = 'FK_SYSMESSA_REFERENCE_SYSMESSA')
alter table SysMessage
   drop constraint FK_SYSMESSA_REFERENCE_SYSMESSA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SysPerson') and o.name = 'FK_SYSPERSO_REFERENCE_SYSDEPAR')
alter table dbo.SysPerson
   drop constraint FK_SYSPERSO_REFERENCE_SYSDEPAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SysRoleSysPerson') and o.name = 'FK_SYSROLES_REFERENCE_SYSPERSO')
alter table dbo.SysRoleSysPerson
   drop constraint FK_SYSROLES_REFERENCE_SYSPERSO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SysRoleSysPerson') and o.name = 'FK_SYSROLES_REFERENCE_SYSROLE')
alter table dbo.SysRoleSysPerson
   drop constraint FK_SYSROLES_REFERENCE_SYSROLE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FileUploader')
            and   type = 'U')
   drop table FileUploader
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysAnnouncement')
            and   type = 'U')
   drop table dbo.SysAnnouncement
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysDepartment')
            and   type = 'U')
   drop table dbo.SysDepartment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysDocument')
            and   type = 'U')
   drop table SysDocument
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysDocumentSysDepartment')
            and   type = 'U')
   drop table SysDocumentSysDepartment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysDocumentSysPerson')
            and   type = 'U')
   drop table SysDocumentSysPerson
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysDocumentTalk')
            and   type = 'U')
   drop table SysDocumentTalk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysEmail')
            and   type = 'U')
   drop table SysEmail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysEmailTemp')
            and   type = 'U')
   drop table dbo.SysEmailTemp
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysException')
            and   type = 'U')
   drop table dbo.SysException
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('dbo.SysField')
            and   name  = 'Index_1'
            and   indid > 0
            and   indid < 255)
   drop index dbo.SysField.Index_1
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysField')
            and   type = 'U')
   drop table dbo.SysField
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysLog')
            and   type = 'U')
   drop table dbo.SysLog
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysMenu')
            and   type = 'U')
   drop table dbo.SysMenu
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysMenuSysOperation')
            and   type = 'U')
   drop table SysMenuSysOperation
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysMenuSysRoleSysOperation')
            and   type = 'U')
   drop table SysMenuSysRoleSysOperation
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysMessage')
            and   type = 'U')
   drop table SysMessage
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysMessageTemp')
            and   type = 'U')
   drop table dbo.SysMessageTemp
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysNotice')
            and   type = 'U')
   drop table dbo.SysNotice
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysOperation')
            and   type = 'U')
   drop table SysOperation
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('dbo.SysPerson')
            and   name  = 'Index_1'
            and   indid > 0
            and   indid < 255)
   drop index dbo.SysPerson.Index_1
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysPerson')
            and   type = 'U')
   drop table dbo.SysPerson
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysRole')
            and   type = 'U')
   drop table dbo.SysRole
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysRoleSysPerson')
            and   type = 'U')
   drop table dbo.SysRoleSysPerson
go

/*==============================================================*/
/* Table: FileUploader                                          */
/*==============================================================*/
create table FileUploader (
   Id                   nvarchar(36)         not null,
   Name                 nvarchar(200)        null,
   Path                 nvarchar(200)        null,
   FullPath             varchar(500)         null,
   Suffix               nvarchar(200)        null,
   Size                 int                  null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   State                nvarchar(200)        collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_FILEUPLOADER primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('FileUploader') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'FileUploader' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '����', 
   'user', @CurrentUser, 'table', 'FileUploader'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FileUploader')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FileUploader')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FileUploader')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Path')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Path'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '·��',
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Path'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FileUploader')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FullPath')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'FullPath'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ȫ·��',
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'FullPath'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FileUploader')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Suffix')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Suffix'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��׺',
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Suffix'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FileUploader')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Size')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Size'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��С',
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Size'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FileUploader')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Remark'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FileUploader')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FileUploader')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FileUploader')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'CreatePerson'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'CreatePerson'
go

/*==============================================================*/
/* Table: SysAnnouncement                                       */
/*==============================================================*/
create table dbo.SysAnnouncement (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   Title                nvarchar(100)        collate Chinese_PRC_CI_AS null,
   Message              nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   State                nvarchar(200)        collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSANNOUNCEMENT primary key nonclustered (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysAnnouncement') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysAnnouncement' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '�������', 
   'user', 'dbo', 'table', 'SysAnnouncement'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysAnnouncement')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysAnnouncement', 'column', 'Id'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysAnnouncement', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysAnnouncement')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Title')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysAnnouncement', 'column', 'Title'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysAnnouncement', 'column', 'Title'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysAnnouncement')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Message')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysAnnouncement', 'column', 'Message'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysAnnouncement', 'column', 'Message'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysAnnouncement')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysAnnouncement', 'column', 'State'

end


execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', 'dbo', 'table', 'SysAnnouncement', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysAnnouncement')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysAnnouncement', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'dbo', 'table', 'SysAnnouncement', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysAnnouncement')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysAnnouncement', 'column', 'CreatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', 'dbo', 'table', 'SysAnnouncement', 'column', 'CreatePerson'
go

/*==============================================================*/
/* Table: SysDepartment                                         */
/*==============================================================*/
create table dbo.SysDepartment (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   Name                 nvarchar(200)        collate Chinese_PRC_CI_AS not null,
   ParentId             nvarchar(36)         collate Chinese_PRC_CI_AS null,
   Address              nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Sort                 int                  null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   UpdateTime           datetime             null,
   UpdatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSDEPARTMENT primary key nonclustered (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysDepartment') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysDepartment' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '����', 
   'user', 'dbo', 'table', 'SysDepartment'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'Id'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'Name'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ParentId')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'ParentId'

end


execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'ParentId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Address')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'Address'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ŵ�ַ',
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'Address'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Sort')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'Sort'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'Sort'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'CreatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'CreatePerson'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'UpdateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '�༭ʱ��',
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'UpdatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '�༭��',
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'UpdatePerson'
go

/*==============================================================*/
/* Table: SysDocument                                           */
/*==============================================================*/
create table SysDocument (
   Id                   nvarchar(36)         not null,
   Name                 nvarchar(200)        null,
   Path                 nvarchar(200)        null,
   FullPath             varchar(500)         null,
   Suffix               nvarchar(200)        null,
   Size                 int                  null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   Download             int                  collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSDOCUMENT primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysDocument') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SysDocument' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�ĵ�����', 
   'user', @CurrentUser, 'table', 'SysDocument'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocument')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocument')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocument')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Path')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Path'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '·��',
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Path'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocument')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FullPath')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'FullPath'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ȫ·��',
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'FullPath'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocument')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Suffix')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Suffix'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��׺',
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Suffix'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocument')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Size')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Size'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��С',
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Size'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocument')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Remark'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocument')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Download')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Download'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ش���',
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'Download'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocument')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocument')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'CreatePerson'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'SysDocument', 'column', 'CreatePerson'
go

/*==============================================================*/
/* Table: SysDocumentSysDepartment                              */
/*==============================================================*/
create table SysDocumentSysDepartment (
   Id                   nvarchar(36)         not null,
   SysDepartmentId      nvarchar(36)         not null,
   Sys_Id               nvarchar(36)         not null,
   constraint PK_SYSDOCUMENTSYSDEPARTMENT primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysDocumentSysDepartment') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SysDocumentSysDepartment' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�ĵ�����', 
   'user', @CurrentUser, 'table', 'SysDocumentSysDepartment'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentSysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentSysDepartment', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Id',
   'user', @CurrentUser, 'table', 'SysDocumentSysDepartment', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentSysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysDepartmentId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentSysDepartment', 'column', 'SysDepartmentId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'SysDepartmentId',
   'user', @CurrentUser, 'table', 'SysDocumentSysDepartment', 'column', 'SysDepartmentId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentSysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Sys_Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentSysDepartment', 'column', 'Sys_Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'SysDocumentId',
   'user', @CurrentUser, 'table', 'SysDocumentSysDepartment', 'column', 'Sys_Id'
go

/*==============================================================*/
/* Table: SysDocumentSysPerson                                  */
/*==============================================================*/
create table SysDocumentSysPerson (
   Id                   nvarchar(36)         not null,
   SysPersonId          nvarchar(36)         not null,
   SysSysDocumentId_Id  nvarchar(36)         not null,
   constraint PK_SYSDOCUMENTSYSPERSON primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysDocumentSysPerson') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SysDocumentSysPerson' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�ĵ���Ա', 
   'user', @CurrentUser, 'table', 'SysDocumentSysPerson'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentSysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentSysPerson', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Id',
   'user', @CurrentUser, 'table', 'SysDocumentSysPerson', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentSysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysPersonId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentSysPerson', 'column', 'SysPersonId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'SysPersonId',
   'user', @CurrentUser, 'table', 'SysDocumentSysPerson', 'column', 'SysPersonId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentSysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysSysDocumentId_Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentSysPerson', 'column', 'SysSysDocumentId_Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'SysDocumentId',
   'user', @CurrentUser, 'table', 'SysDocumentSysPerson', 'column', 'SysSysDocumentId_Id'
go

/*==============================================================*/
/* Table: SysDocumentTalk                                       */
/*==============================================================*/
create table SysDocumentTalk (
   Id                   nvarchar(36)         not null,
   Content              nvarchar(500)        null,
   SysDocumentId        nvarchar(36)         null,
   Bad                  int                  null,
   Good                 int                  collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSDOCUMENTTALK primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysDocumentTalk') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SysDocumentTalk' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�ĵ�����', 
   'user', @CurrentUser, 'table', 'SysDocumentTalk'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentTalk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentTalk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Content')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'Content'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'Content'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentTalk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysDocumentId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'SysDocumentId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ĵ�',
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'SysDocumentId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentTalk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Bad')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'Bad'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��',
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'Bad'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentTalk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Good')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'Good'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��',
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'Good'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentTalk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysDocumentTalk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'CreatePerson'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'SysDocumentTalk', 'column', 'CreatePerson'
go

/*==============================================================*/
/* Table: SysEmail                                              */
/*==============================================================*/
create table SysEmail (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   SysMailId            nvarchar(36)         null,
   Subject              nvarchar(200)        collate Chinese_PRC_CI_AS not null,
   Content              ntext                collate Chinese_PRC_CI_AS null,
   Reply_email          nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Mail_type            nvarchar(200)        null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   State                nvarchar(200)        collate Chinese_PRC_CI_AS null,
   ReadTime             datetime             null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSEMAIL primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysEmail') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SysEmail' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�ʼ����ͼ�¼', 
   'user', @CurrentUser, 'table', 'SysEmail'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysEmail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysEmail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysMailId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'SysMailId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ģ��',
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'SysMailId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysEmail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Subject')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'Subject'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'Subject'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysEmail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Content')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'Content'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'Content'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysEmail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Reply_email')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'Reply_email'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ظ������ַ',
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'Reply_email'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysEmail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Mail_type')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'Mail_type'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ʼ�����',
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'Mail_type'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysEmail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'Remark'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysEmail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysEmail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ReadTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'ReadTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ķ�ʱ��',
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'ReadTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysEmail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysEmail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'CreatePerson'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'SysEmail', 'column', 'CreatePerson'
go

/*==============================================================*/
/* Table: SysEmailTemp                                          */
/*==============================================================*/
create table dbo.SysEmailTemp (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   Mail_name            nvarchar(200)        collate Chinese_PRC_CI_AS not null,
   Subject              nvarchar(200)        collate Chinese_PRC_CI_AS not null,
   Content              ntext                collate Chinese_PRC_CI_AS null,
   Reply_email          nvarchar(200)        collate Chinese_PRC_CI_AS null,
   IsDefault            nvarchar(200)        null,
   Mail_type            nvarchar(200)        null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   State                nvarchar(200)        collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_mail_info2 primary key nonclustered (Id)
         with fillfactor= 90
   on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysEmailTemp') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysEmailTemp' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '�ʼ�ģ��', 
   'user', 'dbo', 'table', 'SysEmailTemp'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysEmailTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Id'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysEmailTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Mail_name')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Mail_name'

end


execute sp_addextendedproperty 'MS_Description', 
   'ģ������',
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Mail_name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysEmailTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Subject')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Subject'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ʼ�����',
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Subject'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysEmailTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Content')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Content'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ʼ�����',
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Content'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysEmailTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Reply_email')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Reply_email'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ظ��ʼ���ַ',
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Reply_email'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysEmailTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsDefault')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'IsDefault'

end


execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�Ĭ��',
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'IsDefault'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysEmailTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Mail_type')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Mail_type'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ʼ�����',
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Mail_type'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysEmailTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysEmailTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'State'

end


execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysEmailTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysEmailTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'CreatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', 'dbo', 'table', 'SysEmailTemp', 'column', 'CreatePerson'
go

/*==============================================================*/
/* Table: SysException                                          */
/*==============================================================*/
create table dbo.SysException (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   LeiXing              nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Message              nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   Result               nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   State                nvarchar(200)        collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSEXCEPTION primary key nonclustered (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysException') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysException' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '�쳣����', 
   'user', 'dbo', 'table', 'SysException'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysException')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysException', 'column', 'Id'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysException', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysException')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LeiXing')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysException', 'column', 'LeiXing'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysException', 'column', 'LeiXing'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysException')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Message')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysException', 'column', 'Message'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysException', 'column', 'Message'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysException')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Result')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysException', 'column', 'Result'

end


execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', 'dbo', 'table', 'SysException', 'column', 'Result'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysException')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysException', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'dbo', 'table', 'SysException', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysException')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysException', 'column', 'State'

end


execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', 'dbo', 'table', 'SysException', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysException')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysException', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'dbo', 'table', 'SysException', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysException')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysException', 'column', 'CreatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', 'dbo', 'table', 'SysException', 'column', 'CreatePerson'
go

/*==============================================================*/
/* Table: SysField                                              */
/*==============================================================*/
create table dbo.SysField (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   MyTexts              nvarchar(200)        collate Chinese_PRC_CI_AS not null,
   ParentId             nvarchar(36)         collate Chinese_PRC_CI_AS null,
   MyTables             nvarchar(200)        collate Chinese_PRC_CI_AS null,
   MyColums             nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Sort                 int                  null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   UpdateTime           datetime             null,
   UpdatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSFIELD primary key nonclustered (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysField') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysField' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '�����ֵ�', 
   'user', 'dbo', 'table', 'SysField'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysField')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysField', 'column', 'Id'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysField', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysField')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MyTexts')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysField', 'column', 'MyTexts'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysField', 'column', 'MyTexts'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysField')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ParentId')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysField', 'column', 'ParentId'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ڵ�',
   'user', 'dbo', 'table', 'SysField', 'column', 'ParentId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysField')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MyTables')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysField', 'column', 'MyTables'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysField', 'column', 'MyTables'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysField')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MyColums')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysField', 'column', 'MyColums'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ֶ�',
   'user', 'dbo', 'table', 'SysField', 'column', 'MyColums'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysField')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Sort')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysField', 'column', 'Sort'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysField', 'column', 'Sort'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysField')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysField', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'dbo', 'table', 'SysField', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysField')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysField', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'dbo', 'table', 'SysField', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysField')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysField', 'column', 'CreatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', 'dbo', 'table', 'SysField', 'column', 'CreatePerson'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysField')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysField', 'column', 'UpdateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '�༭ʱ��',
   'user', 'dbo', 'table', 'SysField', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysField')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysField', 'column', 'UpdatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '�༭��',
   'user', 'dbo', 'table', 'SysField', 'column', 'UpdatePerson'
go

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create index Index_1 on dbo.SysField (
MyTables ASC,
MyColums ASC
)
go

/*==============================================================*/
/* Table: SysLog                                                */
/*==============================================================*/
create table dbo.SysLog (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   PersonId             nvarchar(36)         collate Chinese_PRC_CI_AS null,
   Message              nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   Result               nvarchar(200)        collate Chinese_PRC_CI_AS null,
   MenuId               nvarchar(36)         collate Chinese_PRC_CI_AS null,
   Ip                   nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   State                nvarchar(200)        collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSLOG primary key nonclustered (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysLog') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysLog' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '��־', 
   'user', 'dbo', 'table', 'SysLog'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'Id'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysLog', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PersonId')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'PersonId'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ա',
   'user', 'dbo', 'table', 'SysLog', 'column', 'PersonId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Message')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'Message'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysLog', 'column', 'Message'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Result')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'Result'

end


execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', 'dbo', 'table', 'SysLog', 'column', 'Result'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MenuId')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'MenuId'

end


execute sp_addextendedproperty 'MS_Description', 
   'ģ��',
   'user', 'dbo', 'table', 'SysLog', 'column', 'MenuId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Ip')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'Ip'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ַ',
   'user', 'dbo', 'table', 'SysLog', 'column', 'Ip'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'dbo', 'table', 'SysLog', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'State'

end


execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', 'dbo', 'table', 'SysLog', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'dbo', 'table', 'SysLog', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'CreatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', 'dbo', 'table', 'SysLog', 'column', 'CreatePerson'
go

/*==============================================================*/
/* Table: SysMenu                                               */
/*==============================================================*/
create table dbo.SysMenu (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   Name                 nvarchar(200)        collate Chinese_PRC_CI_AS not null,
   ParentId             nvarchar(36)         collate Chinese_PRC_CI_AS null,
   Url                  nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Iconic               nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Sort                 int                  null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   State                nvarchar(200)        collate Chinese_PRC_CI_AS null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   UpdateTime           datetime             null,
   UpdatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   IsLeaf               nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSMENU primary key (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysMenu') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysMenu' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������', 
   'user', 'dbo', 'table', 'SysMenu'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Id'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Name'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ParentId')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'ParentId'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ģ��',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'ParentId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Url')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Url'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ַ',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Url'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Iconic')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Iconic'

end


execute sp_addextendedproperty 'MS_Description', 
   'ͼ��',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Iconic'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Sort')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Sort'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Sort'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'State'

end


execute sp_addextendedproperty 'MS_Description', 
   'չ�����۵�',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'CreatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'CreatePerson'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'UpdateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '�༭ʱ��',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'UpdatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '�༭��',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'UpdatePerson'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsLeaf')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'IsLeaf'

end


execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ����ӽڵ�',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'IsLeaf'
go

/*==============================================================*/
/* Table: SysMenuSysOperation                                   */
/*==============================================================*/
create table SysMenuSysOperation (
   Id                   nvarchar(36)         not null,
   SysMenuId            nvarchar(36)         not null,
   SysOperationId       nvarchar(36)         not null,
   constraint PK_SYSMENUSYSOPERATION primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysMenuSysOperation') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SysMenuSysOperation' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�˵�����', 
   'user', @CurrentUser, 'table', 'SysMenuSysOperation'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMenuSysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMenuSysOperation', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Id',
   'user', @CurrentUser, 'table', 'SysMenuSysOperation', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMenuSysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysMenuId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMenuSysOperation', 'column', 'SysMenuId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�˵�',
   'user', @CurrentUser, 'table', 'SysMenuSysOperation', 'column', 'SysMenuId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMenuSysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysOperationId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMenuSysOperation', 'column', 'SysOperationId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysMenuSysOperation', 'column', 'SysOperationId'
go

/*==============================================================*/
/* Table: SysMenuSysRoleSysOperation                            */
/*==============================================================*/
create table SysMenuSysRoleSysOperation (
   Id                   nvarchar(36)         not null,
   SysMenuId            nvarchar(36)         null,
   SysOperationId       nvarchar(36)         null,
   SysRoleId            nvarchar(36)         null,
   constraint PK_SYSMENUSYSROLESYSOPERATION primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysMenuSysRoleSysOperation') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SysMenuSysRoleSysOperation' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�˵���ɫ����', 
   'user', @CurrentUser, 'table', 'SysMenuSysRoleSysOperation'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMenuSysRoleSysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMenuSysRoleSysOperation', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysMenuSysRoleSysOperation', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMenuSysRoleSysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysMenuId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMenuSysRoleSysOperation', 'column', 'SysMenuId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�˵�',
   'user', @CurrentUser, 'table', 'SysMenuSysRoleSysOperation', 'column', 'SysMenuId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMenuSysRoleSysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysOperationId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMenuSysRoleSysOperation', 'column', 'SysOperationId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysMenuSysRoleSysOperation', 'column', 'SysOperationId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMenuSysRoleSysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysRoleId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMenuSysRoleSysOperation', 'column', 'SysRoleId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ɫ',
   'user', @CurrentUser, 'table', 'SysMenuSysRoleSysOperation', 'column', 'SysRoleId'
go

/*==============================================================*/
/* Table: SysMessage                                            */
/*==============================================================*/
create table SysMessage (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   Content              nvarchar(400)        collate Chinese_PRC_CI_AS null,
   SysMessageTempId     nvarchar(36)         null,
   MessageType          nvarchar(200)        null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   State                nvarchar(200)        collate Chinese_PRC_CI_AS null,
   ReadTime             datetime             null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSMESSAGE primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysMessage') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SysMessage' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '���ŷ��ͼ�¼', 
   'user', @CurrentUser, 'table', 'SysMessage'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMessage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMessage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Content')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'Content'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'Content'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMessage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysMessageTempId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'SysMessageTempId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ģ��',
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'SysMessageTempId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMessage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MessageType')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'MessageType'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'MessageType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMessage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'Remark'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMessage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMessage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ReadTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'ReadTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ķ�ʱ��',
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'ReadTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMessage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMessage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'CreatePerson'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'SysMessage', 'column', 'CreatePerson'
go

/*==============================================================*/
/* Table: SysMessageTemp                                        */
/*==============================================================*/
create table dbo.SysMessageTemp (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   MessageName          nvarchar(200)        collate Chinese_PRC_CI_AS not null,
   Content              nvarchar(400)        collate Chinese_PRC_CI_AS null,
   IsDefault            nvarchar(200)        null,
   MessageType          nvarchar(200)        null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   State                nvarchar(200)        collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_mail_info primary key nonclustered (Id)
         with fillfactor= 90
   on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysMessageTemp') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysMessageTemp' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '����ģ��', 
   'user', 'dbo', 'table', 'SysMessageTemp'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMessageTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'Id'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMessageTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MessageName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'MessageName'

end


execute sp_addextendedproperty 'MS_Description', 
   'ģ������',
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'MessageName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMessageTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Content')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'Content'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'Content'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMessageTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsDefault')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'IsDefault'

end


execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�Ĭ��',
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'IsDefault'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMessageTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MessageType')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'MessageType'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'MessageType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMessageTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMessageTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'State'

end


execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMessageTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMessageTemp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'CreatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', 'dbo', 'table', 'SysMessageTemp', 'column', 'CreatePerson'
go

/*==============================================================*/
/* Table: SysNotice                                             */
/*==============================================================*/
create table dbo.SysNotice (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   Message              nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   LostTime             datetime             null,
   PersonId             nvarchar(36)         collate Chinese_PRC_CI_AS null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   State                nvarchar(200)        collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSNOTICE primary key nonclustered (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysNotice') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysNotice' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '֪ͨ����', 
   'user', 'dbo', 'table', 'SysNotice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysNotice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysNotice', 'column', 'Id'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysNotice', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysNotice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Message')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysNotice', 'column', 'Message'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysNotice', 'column', 'Message'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysNotice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LostTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysNotice', 'column', 'LostTime'

end


execute sp_addextendedproperty 'MS_Description', 
   'ʧЧʱ��',
   'user', 'dbo', 'table', 'SysNotice', 'column', 'LostTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysNotice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PersonId')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysNotice', 'column', 'PersonId'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ա',
   'user', 'dbo', 'table', 'SysNotice', 'column', 'PersonId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysNotice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysNotice', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'dbo', 'table', 'SysNotice', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysNotice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysNotice', 'column', 'State'

end


execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', 'dbo', 'table', 'SysNotice', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysNotice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysNotice', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'dbo', 'table', 'SysNotice', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysNotice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysNotice', 'column', 'CreatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', 'dbo', 'table', 'SysNotice', 'column', 'CreatePerson'
go

/*==============================================================*/
/* Table: SysOperation                                          */
/*==============================================================*/
create table SysOperation (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   Name                 nvarchar(200)        collate Chinese_PRC_CI_AS null,
   "Function"           nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Iconic               nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Sort                 int                  null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   State                nvarchar(200)        collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSOPERATION primary key nonclustered (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysOperation') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SysOperation' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '����', 
   'user', @CurrentUser, 'table', 'SysOperation'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Function')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Function'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Function'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Iconic')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Iconic'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ͼ��',
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Iconic'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Sort')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Sort'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Sort'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Remark'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'CreatePerson'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'CreatePerson'
go

/*==============================================================*/
/* Table: SysPerson                                             */
/*==============================================================*/
create table dbo.SysPerson (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   Name                 nvarchar(200)        collate Chinese_PRC_CI_AS not null,
   MyName               nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Password             nvarchar(200)        collate Chinese_PRC_CI_AS not null,
   SurePassword         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Sex                  nvarchar(200)        collate Chinese_PRC_CI_AS null,
   SysDepartmentId      nvarchar(36)         collate Chinese_PRC_CI_AS null,
   Position             nvarchar(200)        collate Chinese_PRC_CI_AS null,
   MobilePhoneNumber    nvarchar(200)        collate Chinese_PRC_CI_AS null,
   PhoneNumber          nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Province             nvarchar(200)        collate Chinese_PRC_CI_AS null,
   City                 nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Village              nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Address              nvarchar(200)        collate Chinese_PRC_CI_AS null,
   EmailAddress         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Remark               nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   State                nvarchar(200)        collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   UpdateTime           datetime             null,
   LogonNum             int                  null,
   LogonTime            datetime             null,
   LogonIP              nvarchar(200)        collate Chinese_PRC_CI_AS null,
   LastLogonTime        datetime             null,
   LastLogonIP          nvarchar(200)        collate Chinese_PRC_CI_AS null,
   PageStyle            nvarchar(200)        collate Chinese_PRC_CI_AS null,
   UpdatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   Version              timestamp            null,
   HDpic                varchar(200)         null,
   constraint PK_SYSPERSON primary key nonclustered (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysPerson') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysPerson' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '��Ա', 
   'user', 'dbo', 'table', 'SysPerson'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Id'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Name'

end


execute sp_addextendedproperty 'MS_Description', 
   '�û���',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MyName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'MyName'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'MyName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Password')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Password'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Password'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SurePassword')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'SurePassword'

end


execute sp_addextendedproperty 'MS_Description', 
   'ȷ������',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'SurePassword'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Sex')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Sex'

end


execute sp_addextendedproperty 'MS_Description', 
   '�Ա�',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Sex'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysDepartmentId')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'SysDepartmentId'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'SysDepartmentId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Position')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Position'

end


execute sp_addextendedproperty 'MS_Description', 
   'ְλ',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Position'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MobilePhoneNumber')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'MobilePhoneNumber'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ֻ�����',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'MobilePhoneNumber'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PhoneNumber')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'PhoneNumber'

end


execute sp_addextendedproperty 'MS_Description', 
   '�칫�绰',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'PhoneNumber'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Province')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Province'

end


execute sp_addextendedproperty 'MS_Description', 
   'ʡ',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Province'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'City')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'City'

end


execute sp_addextendedproperty 'MS_Description', 
   '��',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'City'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Village')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Village'

end


execute sp_addextendedproperty 'MS_Description', 
   '��',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Village'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Address')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Address'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ϵ��ַ',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Address'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmailAddress')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'EmailAddress'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'EmailAddress'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'State'

end


execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'CreatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'CreatePerson'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'UpdateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '�༭ʱ��',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LogonNum')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'LogonNum'

end


execute sp_addextendedproperty 'MS_Description', 
   '��¼����',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'LogonNum'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LogonTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'LogonTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ε�¼ʱ��',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'LogonTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LogonIP')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'LogonIP'

end


execute sp_addextendedproperty 'MS_Description', 
   '��¼IP',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'LogonIP'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LastLogonTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'LastLogonTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ϴε�¼ʱ��',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'LastLogonTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LastLogonIP')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'LastLogonIP'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ϴε�¼IP',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'LastLogonIP'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PageStyle')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'PageStyle'

end


execute sp_addextendedproperty 'MS_Description', 
   'ҳ��Ƥ��',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'PageStyle'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'UpdatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '�༭��',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'UpdatePerson'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Version')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Version'

end


execute sp_addextendedproperty 'MS_Description', 
   'ʱ���',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Version'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HDpic')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'HDpic'

end


execute sp_addextendedproperty 'MS_Description', 
   'ͷ��',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'HDpic'
go

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create index Index_1 on dbo.SysPerson (
Name ASC
)
go

/*==============================================================*/
/* Table: SysRole                                               */
/*==============================================================*/
create table dbo.SysRole (
   Id                   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   Name                 nvarchar(200)        collate Chinese_PRC_CI_AS not null,
   Description          nvarchar(4000)       collate Chinese_PRC_CI_AS null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   UpdateTime           datetime             null,
   UpdatePerson         nvarchar(200)        collate Chinese_PRC_CI_AS null,
   constraint PK_SYSROLE primary key (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysRole') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysRole' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '��ɫ', 
   'user', 'dbo', 'table', 'SysRole'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysRole', 'column', 'Id'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysRole', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysRole', 'column', 'Name'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysRole', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Description')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysRole', 'column', 'Description'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'dbo', 'table', 'SysRole', 'column', 'Description'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysRole', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'dbo', 'table', 'SysRole', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysRole', 'column', 'CreatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', 'dbo', 'table', 'SysRole', 'column', 'CreatePerson'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysRole', 'column', 'UpdateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '�༭ʱ��',
   'user', 'dbo', 'table', 'SysRole', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdatePerson')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysRole', 'column', 'UpdatePerson'

end


execute sp_addextendedproperty 'MS_Description', 
   '�༭��',
   'user', 'dbo', 'table', 'SysRole', 'column', 'UpdatePerson'
go

/*==============================================================*/
/* Table: SysRoleSysPerson                                      */
/*==============================================================*/
create table dbo.SysRoleSysPerson (
   Id                   nvarchar(36)         not null,
   SysPersonId          nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   SysRoleId            nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   constraint PK_SYSROLESYSPERSON primary key (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysRoleSysPerson') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysRoleSysPerson' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '��ɫ��Ա', 
   'user', 'dbo', 'table', 'SysRoleSysPerson'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysRoleSysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysRoleSysPerson', 'column', 'Id'

end


execute sp_addextendedproperty 'MS_Description', 
   'Id',
   'user', 'dbo', 'table', 'SysRoleSysPerson', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysRoleSysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysPersonId')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysRoleSysPerson', 'column', 'SysPersonId'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ա',
   'user', 'dbo', 'table', 'SysRoleSysPerson', 'column', 'SysPersonId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysRoleSysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SysRoleId')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysRoleSysPerson', 'column', 'SysRoleId'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ɫ',
   'user', 'dbo', 'table', 'SysRoleSysPerson', 'column', 'SysRoleId'
go

alter table dbo.SysDepartment
   add constraint FK_SYSDEPAR_REFERENCE_SYSDEPAR foreign key (ParentId)
      references dbo.SysDepartment (Id)
go

alter table SysDocumentSysDepartment
   add constraint FK_SYSDOCUM_REFERENCE_SYSDEPAR foreign key (SysDepartmentId)
      references dbo.SysDepartment (Id)
go

alter table SysDocumentSysDepartment
   add constraint FK_SYSDOCUM_REFERENCE_SYSDOCUM2 foreign key (Sys_Id)
      references SysDocument (Id)
go

alter table SysDocumentSysPerson
   add constraint FK_SYSDOCUM_REFERENCE_SYSPERSO foreign key (SysPersonId)
      references dbo.SysPerson (Id)
go

alter table SysDocumentSysPerson
   add constraint FK_SYSDOCUM_REFERENCE_SYSDOCUM3 foreign key (SysSysDocumentId_Id)
      references SysDocument (Id)
go

alter table SysDocumentTalk
   add constraint FK_SYSDOCUM_REFERENCE_SYSDOCUM foreign key (SysDocumentId)
      references SysDocument (Id)
go

alter table SysEmail
   add constraint FK_SYSEMAIL_REFERENCE_SYSEMAIL foreign key (SysMailId)
      references dbo.SysEmailTemp (Id)
go

alter table dbo.SysField
   add constraint FK_SYSFIELD_REFERENCE_SYSFIELD foreign key (ParentId)
      references dbo.SysField (Id)
go

alter table dbo.SysMenu
   add constraint FK_SYSMENU_REFERENCE_SYSMENU foreign key (ParentId)
      references dbo.SysMenu (Id)
go

alter table SysMenuSysOperation
   add constraint FK_SYSMENUS_REFERENCE_SYSMENU foreign key (SysMenuId)
      references dbo.SysMenu (Id)
go

alter table SysMenuSysOperation
   add constraint FK_SYSMENUS_REFERENCE_SYSOPERA foreign key (SysOperationId)
      references SysOperation (Id)
go

alter table SysMenuSysRoleSysOperation
   add constraint FK_SYSMENUS_REFERENCE_SYSOPERA2 foreign key (SysOperationId)
      references SysOperation (Id)
go

alter table SysMenuSysRoleSysOperation
   add constraint FK_SYSMENUS_REFERENCE_SYSROLE foreign key (SysRoleId)
      references dbo.SysRole (Id)
go

alter table SysMenuSysRoleSysOperation
   add constraint FK_SYSMENUS_REFERENCE_SYSMENU2 foreign key (SysMenuId)
      references dbo.SysMenu (Id)
go

alter table SysMessage
   add constraint FK_SYSMESSA_REFERENCE_SYSMESSA foreign key (SysMessageTempId)
      references dbo.SysMessageTemp (Id)
go

alter table dbo.SysPerson
   add constraint FK_SYSPERSO_REFERENCE_SYSDEPAR foreign key (SysDepartmentId)
      references dbo.SysDepartment (Id)
go

alter table dbo.SysRoleSysPerson
   add constraint FK_SYSROLES_REFERENCE_SYSPERSO foreign key (SysPersonId)
      references dbo.SysPerson (Id)
go

alter table dbo.SysRoleSysPerson
   add constraint FK_SYSROLES_REFERENCE_SYSROLE foreign key (SysRoleId)
      references dbo.SysRole (Id)
go

