.class public Lcom/motorola/contacts/simcontact/account/CardAccountType;
.super Lcom/android/contacts/model/account/BaseAccountType;
.source "CardAccountType.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/motorola/contacts/simcontact/account/CardAccountType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/simcontact/account/CardAccountType;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authenticatorPackageName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType;-><init>()V

    .line 34
    const-string v1, "com.card.contacts"

    iput-object v1, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 39
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/contacts/simcontact/account/CardAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/motorola/contacts/simcontact/account/CardAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/motorola/contacts/simcontact/account/CardAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/motorola/contacts/simcontact/account/CardAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/motorola/contacts/simcontact/account/CardAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/model/account/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/motorola/contacts/simcontact/account/CardAccountType;->TAG:Ljava/lang/String;

    const-string v2, "Problem building card account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b0106

    const/4 v4, 0x1

    .line 54
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "#displayName"

    const/4 v3, -0x1

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/contacts/simcontact/account/CardAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 56
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 57
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 58
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 60
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 61
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0b015e

    const/16 v5, 0x2061

    invoke-direct {v1, v2, v3, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-object v6
.end method

.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b004f

    const/4 v4, 0x1

    .line 83
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/email_v2"

    const/16 v3, 0xf

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/contacts/simcontact/account/CardAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 84
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$EmailActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/account/BaseAccountType$EmailActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 85
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 86
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 87
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 88
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v6
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b004e

    .line 68
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    const/16 v3, 0xa

    const/4 v4, 0x1

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/contacts/simcontact/account/CardAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 69
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    const v0, 0x7f02006b

    iput v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->iconAltRes:I

    .line 70
    const v0, 0x7f0b0140

    iput v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->iconAltDescriptionRes:I

    .line 71
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$PhoneActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/account/BaseAccountType$PhoneActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 72
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/account/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionAltHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 73
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 74
    const/4 v0, 0x2

    iput v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 75
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 76
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-object v6
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method
