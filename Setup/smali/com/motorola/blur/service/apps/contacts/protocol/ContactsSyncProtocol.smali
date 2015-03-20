.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;
.super Ljava/lang/Object;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ExtraPersonData;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ContactMethod_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ContactMethod_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ExtraPersonData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ExtraPersonData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_GroupChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_GroupChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_GroupFixupChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_GroupFixupChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_GroupFixupData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_GroupFixupData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_GroupFixup_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_GroupFixup_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_GroupMembership_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_GroupMembership_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Group_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Group_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_IdentityFixupChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_IdentityFixupChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_IdentityFixupData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_IdentityFixupData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_IdentityFixup_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_IdentityFixup_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Organization_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Organization_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_PersonChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_PersonChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Person_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Phone_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Phone_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Photo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Photo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7021
    const/16 v2, 0x8

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u001ccontacts_sync_protocol.proto\"\u00c2\u0001\n\nChangelist\u0012$\n\rgroup_changes\u0018\u0001 \u0001(\u000b2\r.GroupChanges\u0012&\n\u000eperson_changes\u0018\u0002 \u0001(\u000b2\u000e.PersonChanges\u00125\n\u0016identity_fixup_changes\u0018\u0003 \u0001(\u000b2\u0015.IdentityFixupChanges\u0012/\n\u0013group_fixup_changes\u0018\u0004 \u0001(\u000b2\u0012.GroupFixupChanges\"W\n\rPersonChanges\u0012\u0015\n\u0004adds\u0018\u0001 \u0003(\u000b2\u0007.Person\u0012\u0015\n\u0004mods\u0018\u0002 \u0003(\u000b2\u0007.Person\u0012\u0018\n\u0007deletes\u0018\u0003 \u0003(\u000b2\u0007.Person\"S\n\u000cGroupChanges\u0012\u0014\n\u0004adds\u0018\u0001 \u0003(\u000b2\u0006.Group\u0012\u0014\n\u0004mods\u0018\u0002 \u0003(\u000b2\u0006.Group\u0012\u0017\n\u0007deletes\u0018\u0003 \u0003(\u000b2\u0006.Grou"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "p\"s\n\u0014IdentityFixupChanges\u0012\u001c\n\u0004adds\u0018\u0001 \u0003(\u000b2\u000e.IdentityFixup\u0012\u001c\n\u0004mods\u0018\u0002 \u0003(\u000b2\u000e.IdentityFixup\u0012\u001f\n\u0007deletes\u0018\u0003 \u0003(\u000b2\u000e.IdentityFixup\"g\n\u0011GroupFixupChanges\u0012\u0019\n\u0004adds\u0018\u0001 \u0003(\u000b2\u000b.GroupFixup\u0012\u0019\n\u0004mods\u0018\u0002 \u0003(\u000b2\u000b.GroupFixup\u0012\u001c\n\u0007deletes\u0018\u0003 \u0003(\u000b2\u000b.GroupFixup\"c\n\rIdentityFixup\u0012\u000f\n\u0007sync_id\u0018\u0001 \u0002(\t\u0012\u0013\n\u000bsync_anchor\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004data\u0018\u0003 \u0001(\t\u0012\u001e\n\u0016modify_set_fields_only\u0018\u0004 \u0001(\u0008\"z\n\u0011IdentityFixupData\u0012\u0015\n\rservice_name1\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bservice_id1\u0018\u0002 \u0001(\t\u0012\u0015\n\rservice"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "_name2\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bservice_id2\u0018\u0004 \u0001(\t\u0012\r\n\u0005merge\u0018\u0005 \u0001(\u0005\"\u00e1\u0006\n\u0006Person\u0012\u000f\n\u0007sync_id\u0018\u0001 \u0002(\t\u0012\u0013\n\u000bsync_anchor\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004name\u0018\u0003 \u0001(\t\u0012\r\n\u0005notes\u0018\u0004 \u0001(\t\u0012\u0017\n\u000ftimes_contacted\u0018\u0005 \u0001(\r\u0012\u001b\n\u0013last_time_contacted\u0018\u0006 \u0001(\u0004\u0012\u000f\n\u0007starred\u0018\u0007 \u0001(\u0008\u0012\u0013\n\u000bsource_name\u0018\u0008 \u0001(\t\u0012\u001a\n\u0012source_external_id\u0018\t \u0001(\t\u0012\u0019\n\u0011extra_person_data\u0018\n \u0001(\t\u0012\u0016\n\u0006phones\u0018\u000b \u0003(\u000b2\u0006.Phone\u0012\'\n\u000fcontact_methods\u0018\u000c \u0003(\u000b2\u000e.ContactMethod\u0012$\n\rorganizations\u0018\r \u0003(\u000b2\r.Organization\u0012+\n\u0011group_memberships\u0018\u000e "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u0003(\u000b2\u0010.GroupMembership\u0012\u0015\n\u0005photo\u0018\u000f \u0003(\u000b2\u0006.Photo\u0012\r\n\u0005is_me\u0018\u0010 \u0001(\u0008\u0012\u0013\n\u000bprofile_uri\u0018\u0011 \u0001(\t\u0012\u001e\n\u0016modify_set_fields_only\u0018\u0012 \u0001(\u0008\u0012\u0012\n\tfriend_id\u0018\u00e8\u0007 \u0001(\t\u0012\u0012\n\tfriend_of\u0018\u00e9\u0007 \u0001(\t\u0012\u001f\n\u0006gender\u0018\u00ea\u0007 \u0001(\u000e2\u000e.Person.Gender\u0012\u0011\n\u0008birthday\u0018\u00eb\u0007 \u0001(\t\u0012\u0015\n\u000cday_of_birth\u0018\u00ec\u0007 \u0001(\u0005\u0012&\n\u000emonth_of_birth\u0018\u00ed\u0007 \u0001(\u000e2\r.Person.Month\u0012\u0016\n\ryear_of_birth\u0018\u00ee\u0007 \u0001(\u0005\u0012\r\n\u0004tags\u0018\u00ef\u0007 \u0003(\t\u0012\u0014\n\u000banniversary\u0018\u00f0\u0007 \u0001(\t\"\u001e\n\u0006Gender\u0012\n\n\u0006FEMALE\u0010\u0000\u0012\u0008\n\u0004MALE\u0010\u0001\"\u0099\u0001\n\u0005Month\u0012\u000b\n\u0007January\u0010\u0001\u0012\u000c\n\u0008February\u0010\u0002\u0012\t\n"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\u0005March\u0010\u0003\u0012\t\n\u0005April\u0010\u0004\u0012\u0007\n\u0003May\u0010\u0005\u0012\u0008\n\u0004June\u0010\u0006\u0012\u0008\n\u0004July\u0010\u0007\u0012\n\n\u0006August\u0010\u0008\u0012\r\n\tSeptember\u0010\t\u0012\u000b\n\u0007October\u0010\n\u0012\u000c\n\u0008November\u0010\u000b\u0012\u000c\n\u0008December\u0010\u000c\"~\n\u0005Group\u0012\u000f\n\u0007sync_id\u0018\u0001 \u0002(\t\u0012\u0013\n\u000bsync_anchor\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004name\u0018\u0003 \u0001(\t\u0012!\n\u000cgroup_fixups\u0018\u0004 \u0003(\u000b2\u000b.GroupFixup\u0012\u001e\n\u0016modify_set_fields_only\u0018\u0005 \u0001(\u0008\"`\n\nGroupFixup\u0012\u000c\n\u0004data\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007sync_id\u0018\u0002 \u0002(\t\u0012\u0013\n\u000bsync_anchor\u0018\u0003 \u0001(\t\u0012\u001e\n\u0016modify_set_fields_only\u0018\u0004 \u0001(\u0008\"\u00bb\u0001\n\u000eGroupFixupData\u0012\u0012\n\nservice_id\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bgroup_phone\u0018\u0002 \u0001"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "(\t\u0012\u0013\n\u000bgroup_email\u0018\u0003 \u0001(\t\u0012\u0014\n\u000cselect_phone\u0018\u0004 \u0001(\u0005\u0012\u0014\n\u000cselect_email\u0018\u0005 \u0001(\u0005\u0012\u0014\n\u000cservice_name\u0018\u0006 \u0001(\t\u0012\u0015\n\rgroup_service\u0018\u0007 \u0001(\t\u0012\u0012\n\ngroup_name\u0018\u0008 \u0001(\t\"Z\n\u000fExtraPersonData\u0012\u0017\n\u000fcustom_ringtone\u0018\u0001 \u0001(\t\u0012\u0019\n\u0011send_to_voicemail\u0018\u0002 \u0001(\u0008\u0012\u0013\n\u000bopaque_data\u0018\u0003 \u0001(\u000c\"\u00c7\u0001\n\u0005Phone\u0012\u0019\n\u0004type\u0018\u0001 \u0001(\u000e2\u000b.Phone.Type\u0012\u0014\n\u000cphone_number\u0018\u0002 \u0001(\t\u0012\r\n\u0005label\u0018\u0003 \u0001(\t\u0012\u0018\n\u0010is_primary_phone\u0018\u0004 \u0001(\u0008\"d\n\u0004Type\u0012\n\n\u0006CUSTOM\u0010\u0000\u0012\u0008\n\u0004HOME\u0010\u0001\u0012\n\n\u0006MOBILE\u0010\u0002\u0012\u0008\n\u0004WORK\u0010\u0003\u0012\u000c\n\u0008WORK_FAX\u0010\u0004\u0012\u000c\n\u0008HOME_F"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "AX\u0010\u0005\u0012\t\n\u0005PAGER\u0010\u0006\u0012\t\n\u0005OTHER\u0010\u0007\"\u00ae\u0002\n\rContactMethod\u0012!\n\u0004kind\u0018\u0001 \u0001(\u000e2\u0013.ContactMethod.Kind\u0012!\n\u0004type\u0018\u0002 \u0001(\u000e2\u0013.ContactMethod.Type\u0012\u000c\n\u0004data\u0018\u0003 \u0001(\t\u0012\r\n\u0005label\u0018\u0004 \u0001(\t\u0012\u0018\n\u0010is_primary_email\u0018\u0005 \u0001(\u0008\u0012\u000f\n\u0007auxdata\u0018\u0006 \u0001(\t\")\n\u0004Kind\u0012\t\n\u0005EMAIL\u0010\u0001\u0012\n\n\u0006POSTAL\u0010\u0002\u0012\n\n\u0006SOCIAL\u0010\u0003\"d\n\u0004Type\u0012\n\n\u0006CUSTOM\u0010\u0000\u0012\u0008\n\u0004HOME\u0010\u0001\u0012\n\n\u0006MOBILE\u0010\u0002\u0012\u0008\n\u0004WORK\u0010\u0003\u0012\u000c\n\u0008WORK_FAX\u0010\u0004\u0012\u000c\n\u0008HOME_FAX\u0010\u0005\u0012\t\n\u0005PAGER\u0010\u0006\u0012\t\n\u0005OTHER\u0010\u0007\"\u00e6\u0001\n\u000cOrganization\u0012 \n\u0004type\u0018\u0001 \u0001(\u000e2\u0012.Organization.Type\u0012\r\n\u0005label\u0018\u0002 \u0001(\t\u0012\u000f\n"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u0007company\u0018\u0003 \u0001(\t\u0012\r\n\u0005title\u0018\u0004 \u0001(\t\u0012\u001f\n\u0017is_primary_organization\u0018\u0005 \u0001(\u0008\"d\n\u0004Type\u0012\n\n\u0006CUSTOM\u0010\u0000\u0012\u0008\n\u0004HOME\u0010\u0001\u0012\n\n\u0006MOBILE\u0010\u0002\u0012\u0008\n\u0004WORK\u0010\u0003\u0012\u000c\n\u0008WORK_FAX\u0010\u0004\u0012\u000c\n\u0008HOME_FAX\u0010\u0005\u0012\t\n\u0005PAGER\u0010\u0006\u0012\t\n\u0005OTHER\u0010\u0007\"#\n\u000fGroupMembership\u0012\u0010\n\u0008group_id\u0018\u0001 \u0001(\t\"L\n\u0005Photo\u0012\u000b\n\u0003url\u0018\u0001 \u0001(\t\u0012\u0012\n\nurl_square\u0018\u0002 \u0001(\t\u0012\u0011\n\turl_small\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007url_big\u0018\u0004 \u0001(\tB4\n0com.motorola.blur.service.apps.contacts.protocolH\u0002"

    aput-object v3, v1, v2

    .line 7102
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;-><init>()V

    .line 7246
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 7250
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$12600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Group_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Group_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$12700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Group_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$12702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Group_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_PersonChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_PersonChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_PersonChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$14000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixup_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$14002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixup_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_PersonChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$14100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixup_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$14102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixup_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$15300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixupData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$15302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixupData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$15400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixupData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$15402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixupData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$17400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_ExtraPersonData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$17402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_ExtraPersonData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$17500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_ExtraPersonData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$17502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_ExtraPersonData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$18500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Phone_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$18502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Phone_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$18600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Phone_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$18602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Phone_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$19800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_ContactMethod_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$19802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_ContactMethod_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$19900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_ContactMethod_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$19902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_ContactMethod_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$21500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Organization_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$21502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Organization_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$21600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Organization_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$21602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Organization_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$23000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupMembership_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$23002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupMembership_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$23100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupMembership_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$23102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupMembership_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$23700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Photo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$23702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Photo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$23800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Photo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$23802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Photo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$25002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$2900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_IdentityFixupChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_IdentityFixupChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_IdentityFixupChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_IdentityFixupChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixupChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixupChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixupChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixupChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_IdentityFixup_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_IdentityFixup_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_IdentityFixup_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_IdentityFixup_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_IdentityFixupData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_IdentityFixupData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_IdentityFixupData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_IdentityFixupData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$7300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$7400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Person_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Person_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 7016
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 7252
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
