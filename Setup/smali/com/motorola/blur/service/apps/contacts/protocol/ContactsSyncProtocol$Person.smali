.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Person"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;
    }
.end annotation


# static fields
.field public static final ANNIVERSARY_FIELD_NUMBER:I = 0x3f0

.field public static final BIRTHDAY_FIELD_NUMBER:I = 0x3eb

.field public static final CONTACT_METHODS_FIELD_NUMBER:I = 0xc

.field public static final DAY_OF_BIRTH_FIELD_NUMBER:I = 0x3ec

.field public static final EXTRA_PERSON_DATA_FIELD_NUMBER:I = 0xa

.field public static final FRIEND_ID_FIELD_NUMBER:I = 0x3e8

.field public static final FRIEND_OF_FIELD_NUMBER:I = 0x3e9

.field public static final GENDER_FIELD_NUMBER:I = 0x3ea

.field public static final GROUP_MEMBERSHIPS_FIELD_NUMBER:I = 0xe

.field public static final IS_ME_FIELD_NUMBER:I = 0x10

.field public static final LAST_TIME_CONTACTED_FIELD_NUMBER:I = 0x6

.field public static final MODIFY_SET_FIELDS_ONLY_FIELD_NUMBER:I = 0x12

.field public static final MONTH_OF_BIRTH_FIELD_NUMBER:I = 0x3ed

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field public static final NOTES_FIELD_NUMBER:I = 0x4

.field public static final ORGANIZATIONS_FIELD_NUMBER:I = 0xd

.field public static final PHONES_FIELD_NUMBER:I = 0xb

.field public static final PHOTO_FIELD_NUMBER:I = 0xf

.field public static final PROFILE_URI_FIELD_NUMBER:I = 0x11

.field public static final SOURCE_EXTERNAL_ID_FIELD_NUMBER:I = 0x9

.field public static final SOURCE_NAME_FIELD_NUMBER:I = 0x8

.field public static final STARRED_FIELD_NUMBER:I = 0x7

.field public static final SYNC_ANCHOR_FIELD_NUMBER:I = 0x2

.field public static final SYNC_ID_FIELD_NUMBER:I = 0x1

.field public static final TAGS_FIELD_NUMBER:I = 0x3ef

.field public static final TIMES_CONTACTED_FIELD_NUMBER:I = 0x5

.field public static final YEAR_OF_BIRTH_FIELD_NUMBER:I = 0x3ee

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;


# instance fields
.field private anniversary_:Ljava/lang/String;

.field private birthday_:Ljava/lang/String;

.field private contactMethods_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;",
            ">;"
        }
    .end annotation
.end field

.field private dayOfBirth_:I

.field private extraPersonData_:Ljava/lang/String;

.field private friendId_:Ljava/lang/String;

.field private friendOf_:Ljava/lang/String;

.field private gender_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;

.field private groupMemberships_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;",
            ">;"
        }
    .end annotation
.end field

.field private hasAnniversary:Z

.field private hasBirthday:Z

.field private hasDayOfBirth:Z

.field private hasExtraPersonData:Z

.field private hasFriendId:Z

.field private hasFriendOf:Z

.field private hasGender:Z

.field private hasIsMe:Z

.field private hasLastTimeContacted:Z

.field private hasModifySetFieldsOnly:Z

.field private hasMonthOfBirth:Z

.field private hasName:Z

.field private hasNotes:Z

.field private hasProfileUri:Z

.field private hasSourceExternalId:Z

.field private hasSourceName:Z

.field private hasStarred:Z

.field private hasSyncAnchor:Z

.field private hasSyncId:Z

.field private hasTimesContacted:Z

.field private hasYearOfBirth:Z

.field private isMe_:Z

.field private lastTimeContacted_:J

.field private modifySetFieldsOnly_:Z

.field private monthOfBirth_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field private name_:Ljava/lang/String;

.field private notes_:Ljava/lang/String;

.field private organizations_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;",
            ">;"
        }
    .end annotation
.end field

.field private phones_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;",
            ">;"
        }
    .end annotation
.end field

.field private photo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;",
            ">;"
        }
    .end annotation
.end field

.field private profileUri_:Ljava/lang/String;

.field private sourceExternalId_:Ljava/lang/String;

.field private sourceName_:Ljava/lang/String;

.field private starred_:Z

.field private syncAnchor_:Ljava/lang/String;

.field private syncId_:Ljava/lang/String;

.field private tags_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timesContacted_:I

.field private yearOfBirth_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3819
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .line 3820
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internalForceInit()V

    .line 3821
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->initFields()V

    .line 3822
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2532
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2713
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->syncId_:Ljava/lang/String;

    .line 2720
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->syncAnchor_:Ljava/lang/String;

    .line 2727
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->name_:Ljava/lang/String;

    .line 2734
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->notes_:Ljava/lang/String;

    .line 2741
    iput v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->timesContacted_:I

    .line 2748
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->lastTimeContacted_:J

    .line 2755
    iput-boolean v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->starred_:Z

    .line 2762
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->sourceName_:Ljava/lang/String;

    .line 2769
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->sourceExternalId_:Ljava/lang/String;

    .line 2776
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->extraPersonData_:Ljava/lang/String;

    .line 2782
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;

    .line 2794
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;

    .line 2806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;

    .line 2818
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;

    .line 2830
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;

    .line 2843
    iput-boolean v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->isMe_:Z

    .line 2850
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->profileUri_:Ljava/lang/String;

    .line 2857
    iput-boolean v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->modifySetFieldsOnly_:Z

    .line 2864
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->friendId_:Ljava/lang/String;

    .line 2871
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->friendOf_:Ljava/lang/String;

    .line 2885
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->birthday_:Ljava/lang/String;

    .line 2892
    iput v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->dayOfBirth_:I

    .line 2906
    iput v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->yearOfBirth_:I

    .line 2912
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;

    .line 2925
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->anniversary_:Ljava/lang/String;

    .line 2533
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->initFields()V

    .line 2534
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;

    .prologue
    .line 2529
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "noInit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2535
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2713
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->syncId_:Ljava/lang/String;

    .line 2720
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->syncAnchor_:Ljava/lang/String;

    .line 2727
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->name_:Ljava/lang/String;

    .line 2734
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->notes_:Ljava/lang/String;

    .line 2741
    iput v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->timesContacted_:I

    .line 2748
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->lastTimeContacted_:J

    .line 2755
    iput-boolean v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->starred_:Z

    .line 2762
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->sourceName_:Ljava/lang/String;

    .line 2769
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->sourceExternalId_:Ljava/lang/String;

    .line 2776
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->extraPersonData_:Ljava/lang/String;

    .line 2782
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;

    .line 2794
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;

    .line 2806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;

    .line 2818
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;

    .line 2830
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;

    .line 2843
    iput-boolean v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->isMe_:Z

    .line 2850
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->profileUri_:Ljava/lang/String;

    .line 2857
    iput-boolean v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->modifySetFieldsOnly_:Z

    .line 2864
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->friendId_:Ljava/lang/String;

    .line 2871
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->friendOf_:Ljava/lang/String;

    .line 2885
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->birthday_:Ljava/lang/String;

    .line 2892
    iput v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->dayOfBirth_:I

    .line 2906
    iput v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->yearOfBirth_:I

    .line 2912
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;

    .line 2925
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->anniversary_:Ljava/lang/String;

    .line 2535
    return-void
.end method

.method static synthetic access$10002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSourceExternalId:Z

    return p1
.end method

.method static synthetic access$10102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->sourceExternalId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasExtraPersonData:Z

    return p1
.end method

.method static synthetic access$10302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->extraPersonData_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasIsMe:Z

    return p1
.end method

.method static synthetic access$10502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->isMe_:Z

    return p1
.end method

.method static synthetic access$10602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasProfileUri:Z

    return p1
.end method

.method static synthetic access$10702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->profileUri_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasModifySetFieldsOnly:Z

    return p1
.end method

.method static synthetic access$10902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->modifySetFieldsOnly_:Z

    return p1
.end method

.method static synthetic access$11002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasFriendId:Z

    return p1
.end method

.method static synthetic access$11102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->friendId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasFriendOf:Z

    return p1
.end method

.method static synthetic access$11302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->friendOf_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasGender:Z

    return p1
.end method

.method static synthetic access$11502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->gender_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;

    return-object p1
.end method

.method static synthetic access$11602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasBirthday:Z

    return p1
.end method

.method static synthetic access$11702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->birthday_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasDayOfBirth:Z

    return p1
.end method

.method static synthetic access$11902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # I

    .prologue
    .line 2529
    iput p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->dayOfBirth_:I

    return p1
.end method

.method static synthetic access$12002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasMonthOfBirth:Z

    return p1
.end method

.method static synthetic access$12102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->monthOfBirth_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    return-object p1
.end method

.method static synthetic access$12202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasYearOfBirth:Z

    return p1
.end method

.method static synthetic access$12302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # I

    .prologue
    .line 2529
    iput p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->yearOfBirth_:I

    return p1
.end method

.method static synthetic access$12402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasAnniversary:Z

    return p1
.end method

.method static synthetic access$12502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->anniversary_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSyncId:Z

    return p1
.end method

.method static synthetic access$8502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->syncId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSyncAnchor:Z

    return p1
.end method

.method static synthetic access$8702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->syncAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasName:Z

    return p1
.end method

.method static synthetic access$8902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasNotes:Z

    return p1
.end method

.method static synthetic access$9102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->notes_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasTimesContacted:Z

    return p1
.end method

.method static synthetic access$9302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # I

    .prologue
    .line 2529
    iput p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->timesContacted_:I

    return p1
.end method

.method static synthetic access$9402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasLastTimeContacted:Z

    return p1
.end method

.method static synthetic access$9502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # J

    .prologue
    .line 2529
    iput-wide p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->lastTimeContacted_:J

    return-wide p1
.end method

.method static synthetic access$9602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasStarred:Z

    return p1
.end method

.method static synthetic access$9702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->starred_:Z

    return p1
.end method

.method static synthetic access$9802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Z

    .prologue
    .line 2529
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSourceName:Z

    return p1
.end method

.method static synthetic access$9902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->sourceName_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1

    .prologue
    .line 2539
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2548
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$7300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2930
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;->FEMALE:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->gender_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;

    .line 2931
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->January:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->monthOfBirth_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2932
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 1

    .prologue
    .line 3000
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->access$7600()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 3003
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2969
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    .line 2970
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2971
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->access$7500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    .line 2973
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2980
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    .line 2981
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2982
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->access$7500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    .line 2984
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2936
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->access$7500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2942
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->access$7500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2990
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->access$7500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2996
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->access$7500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2958
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->access$7500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2964
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->access$7500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2947
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->access$7500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2953
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->access$7500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAnniversary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->anniversary_:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->birthday_:Ljava/lang/String;

    return-object v0
.end method

.method public getContactMethods(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    return-object v0
.end method

.method public getContactMethodsCount()I
    .locals 1

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContactMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2797
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;

    return-object v0
.end method

.method public getDayOfBirth()I
    .locals 1

    .prologue
    .line 2894
    iget v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->dayOfBirth_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2529
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2529
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1

    .prologue
    .line 2543
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    return-object v0
.end method

.method public getExtraPersonData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2778
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->extraPersonData_:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2866
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->friendId_:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendOf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->friendOf_:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;
    .locals 1

    .prologue
    .line 2880
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->gender_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;

    return-object v0
.end method

.method public getGroupMemberships(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;

    return-object v0
.end method

.method public getGroupMembershipsCount()I
    .locals 1

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupMembershipsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;

    return-object v0
.end method

.method public getIsMe()Z
    .locals 1

    .prologue
    .line 2845
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->isMe_:Z

    return v0
.end method

.method public getLastTimeContacted()J
    .locals 2

    .prologue
    .line 2750
    iget-wide v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->lastTimeContacted_:J

    return-wide v0
.end method

.method public getModifySetFieldsOnly()Z
    .locals 1

    .prologue
    .line 2859
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->modifySetFieldsOnly_:Z

    return v0
.end method

.method public getMonthOfBirth()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;
    .locals 1

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->monthOfBirth_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2736
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->notes_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizations(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    return-object v0
.end method

.method public getOrganizationsCount()I
    .locals 1

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOrganizationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;

    return-object v0
.end method

.method public getPhones(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;

    return-object v0
.end method

.method public getPhonesCount()I
    .locals 1

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhonesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoto(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2837
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    return-object v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getProfileUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->profileUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->sourceExternalId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->sourceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .prologue
    .line 2757
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->starred_:Z

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->syncAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2715
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->syncId_:Ljava/lang/String;

    return-object v0
.end method

.method public getTags(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTagsCount()I
    .locals 1

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTagsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;

    return-object v0
.end method

.method public getTimesContacted()I
    .locals 1

    .prologue
    .line 2743
    iget v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->timesContacted_:I

    return v0
.end method

.method public getYearOfBirth()I
    .locals 1

    .prologue
    .line 2908
    iget v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->yearOfBirth_:I

    return v0
.end method

.method public hasAnniversary()Z
    .locals 1

    .prologue
    .line 2926
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasAnniversary:Z

    return v0
.end method

.method public hasBirthday()Z
    .locals 1

    .prologue
    .line 2886
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasBirthday:Z

    return v0
.end method

.method public hasDayOfBirth()Z
    .locals 1

    .prologue
    .line 2893
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasDayOfBirth:Z

    return v0
.end method

.method public hasExtraPersonData()Z
    .locals 1

    .prologue
    .line 2777
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasExtraPersonData:Z

    return v0
.end method

.method public hasFriendId()Z
    .locals 1

    .prologue
    .line 2865
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasFriendId:Z

    return v0
.end method

.method public hasFriendOf()Z
    .locals 1

    .prologue
    .line 2872
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasFriendOf:Z

    return v0
.end method

.method public hasGender()Z
    .locals 1

    .prologue
    .line 2879
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasGender:Z

    return v0
.end method

.method public hasIsMe()Z
    .locals 1

    .prologue
    .line 2844
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasIsMe:Z

    return v0
.end method

.method public hasLastTimeContacted()Z
    .locals 1

    .prologue
    .line 2749
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasLastTimeContacted:Z

    return v0
.end method

.method public hasModifySetFieldsOnly()Z
    .locals 1

    .prologue
    .line 2858
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasModifySetFieldsOnly:Z

    return v0
.end method

.method public hasMonthOfBirth()Z
    .locals 1

    .prologue
    .line 2900
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasMonthOfBirth:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2728
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasName:Z

    return v0
.end method

.method public hasNotes()Z
    .locals 1

    .prologue
    .line 2735
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasNotes:Z

    return v0
.end method

.method public hasProfileUri()Z
    .locals 1

    .prologue
    .line 2851
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasProfileUri:Z

    return v0
.end method

.method public hasSourceExternalId()Z
    .locals 1

    .prologue
    .line 2770
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSourceExternalId:Z

    return v0
.end method

.method public hasSourceName()Z
    .locals 1

    .prologue
    .line 2763
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSourceName:Z

    return v0
.end method

.method public hasStarred()Z
    .locals 1

    .prologue
    .line 2756
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasStarred:Z

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 2721
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSyncAnchor:Z

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 2714
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSyncId:Z

    return v0
.end method

.method public hasTimesContacted()Z
    .locals 1

    .prologue
    .line 2742
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasTimesContacted:Z

    return v0
.end method

.method public hasYearOfBirth()Z
    .locals 1

    .prologue
    .line 2907
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasYearOfBirth:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2553
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Person_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$7400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2529
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2529
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 1

    .prologue
    .line 3001
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2529
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2529
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 1

    .prologue
    .line 3005
    invoke-static {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method
