.class public Lcom/android/contacts/model/account/ExternalAccountType;
.super Lcom/android/contacts/model/account/BaseAccountType;
.source "ExternalAccountType.java"


# instance fields
.field private mAccountTypeIconAttribute:Ljava/lang/String;

.field private mAccountTypeLabelAttribute:Ljava/lang/String;

.field private mCreateContactActivityClassName:Ljava/lang/String;

.field private mDeleteNotAllowedMessageAttribute:Ljava/lang/String;

.field private mDeleteNotAllowedMessageResId:I

.field private mEditContactActivityClassName:Ljava/lang/String;

.field private mExtensionPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasContactsMetadata:Z

.field private mHasEditSchema:Z

.field private mInviteActionLabelAttribute:Ljava/lang/String;

.field private mInviteActionLabelResId:I

.field private mInviteContactActivity:Ljava/lang/String;

.field private mIsContactDeletable:Z

.field private mIsContactJoinable:Z

.field private final mIsExtension:Z

.field private mJoinNotAllowedMessageAttribute:Ljava/lang/String;

.field private mJoinNotAllowedMessageResId:I

.field private mViewContactNotifyService:Ljava/lang/String;

.field private mViewGroupActivity:Ljava/lang/String;

.field private mViewGroupLabelAttribute:Ljava/lang/String;

.field private mViewGroupLabelResId:I

.field private mViewStreamItemActivity:Ljava/lang/String;

.field private mViewStreamItemPhotoActivity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;
    .param p3, "isExtension"    # Z

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V

    .line 112
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isExtension"    # Z
    .param p4, "injectedMetadata"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v9, 0x1

    .line 121
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType;-><init>()V

    .line 102
    iput-boolean v9, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mIsContactDeletable:Z

    .line 103
    iput-boolean v9, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mIsContactJoinable:Z

    .line 122
    iput-boolean p3, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mIsExtension:Z

    .line 123
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 128
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-nez p4, :cond_3

    .line 130
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/account/ExternalAccountType;->loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 138
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    const/4 v3, 0x1

    .line 140
    .local v3, "needLineNumberInErrorLog":Z
    if-eqz v4, :cond_0

    .line 141
    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/contacts/model/account/ExternalAccountType;->inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 145
    :cond_0
    const/4 v3, 0x0

    .line 146
    iget-boolean v6, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mHasEditSchema:Z

    if-eqz v6, :cond_4

    .line 147
    const-string v6, "vnd.android.cursor.item/name"

    invoke-direct {p0, v6}, Lcom/android/contacts/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 148
    const-string v6, "#displayName"

    invoke-direct {p0, v6}, Lcom/android/contacts/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 149
    const-string v6, "#phoneticName"

    invoke-direct {p0, v6}, Lcom/android/contacts/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 150
    const-string v6, "vnd.android.cursor.item/photo"

    invoke-direct {p0, v6}, Lcom/android/contacts/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/contacts/model/account/AccountType$DefinitionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :goto_1
    if-eqz v4, :cond_1

    .line 172
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 176
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    .line 177
    iget-object v6, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string v8, "inviteContactActionLabel"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mInviteActionLabelResId:I

    .line 179
    iget-object v6, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string v8, "viewGroupActionLabel"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewGroupLabelResId:I

    .line 181
    iget-object v6, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string v8, "accountTypeLabel"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/model/account/AccountType;->titleRes:I

    .line 183
    iget-object v6, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string v8, "accountTypeIcon"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    .line 187
    iget-object v6, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mDeleteNotAllowedMessageAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string v8, "deleteNotAllowedMessage"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mDeleteNotAllowedMessageResId:I

    .line 189
    iget-object v6, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mJoinNotAllowedMessageAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string v8, "joinNotAllowedMessage"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mJoinNotAllowedMessageResId:I

    .line 194
    iput-boolean v9, p0, Lcom/android/contacts/model/account/AccountType;->mIsInitialized:Z

    .line 195
    .end local v3    # "needLineNumberInErrorLog":Z
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    :goto_2
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    .line 136
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    move-object v4, p4

    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .line 153
    .restart local v3    # "needLineNumberInErrorLog":Z
    :cond_4
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExternalAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExternalAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExternalAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExternalAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    :try_end_2
    .catch Lcom/android/contacts/model/account/AccountType$DefinitionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 158
    :catch_1
    move-exception v0

    .line 159
    .local v0, "e":Lcom/android/contacts/model/account/AccountType$DefinitionException;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v2, "error":Ljava/lang/StringBuilder;
    const-string v6, "Problem reading XML"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 162
    const-string v6, " in line "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    :cond_5
    const-string v6, " for external package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v6, "ExternalAccountType"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    if-eqz v4, :cond_2

    .line 172
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 171
    .end local v0    # "e":Lcom/android/contacts/model/account/AccountType$DefinitionException;
    .end local v2    # "error":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_6

    .line 172
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v6
.end method

.method private checkKindExists(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExternalAccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    return-void
.end method

.method private loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 213
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x84

    invoke-virtual {v5, p2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 215
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v0, "arr$":[Landroid/content/pm/ServiceInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 216
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const-string v7, "android.provider.CONTACTS_STRUCTURE"

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 218
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_0

    .line 223
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_1
    return-object v4

    .line 215
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "xmlAttributeName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 472
    :cond_0
    :goto_0
    return v3

    .line 455
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x40

    if-eq v5, v6, :cond_2

    .line 456
    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must be a resource name beginnig with \'@\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 457
    goto :goto_0

    .line 459
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 467
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 468
    .local v3, "resId":I
    if-nez v3, :cond_0

    .line 469
    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 470
    goto :goto_0

    .line 463
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 465
    goto :goto_0
.end method


# virtual methods
.method public areContactsDeletable()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mIsContactDeletable:Z

    return v0
.end method

.method public areContactsJoinable()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mIsContactJoinable:Z

    return v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mHasEditSchema:Z

    return v0
.end method

.method public getCreateContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method protected getDeleteNotAllowedMsgResId()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mDeleteNotAllowedMessageResId:I

    return v0
.end method

.method public getEditContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionPackageNames()Ljava/util/List;
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
    .line 301
    iget-object v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    return-object v0
.end method

.method protected getInviteContactActionResId()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mInviteActionLabelResId:I

    return v0
.end method

.method public getInviteContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    return-object v0
.end method

.method protected getJoinNotAllowedMsgResId()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mJoinNotAllowedMessageResId:I

    return v0
.end method

.method public getViewContactNotifyServiceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    return-object v0
.end method

.method public getViewGroupActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    return-object v0
.end method

.method protected getViewGroupLabelResId()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewGroupLabelResId:I

    return v0
.end method

.method public getViewStreamItemActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewStreamItemActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getViewStreamItemPhotoActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewStreamItemPhotoActivity:Ljava/lang/String;

    return-object v0
.end method

.method public hasContactsMetadata()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mHasContactsMetadata:Z

    return v0
.end method

.method protected inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 314
    .local v6, "attrs":Landroid/util/AttributeSet;
    :cond_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 318
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 319
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "No start tag found"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 431
    .end local v16    # "type":I
    :catch_0
    move-exception v9

    .line 432
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v18, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    const-string v19, "Problem reading XML"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v18

    .line 322
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "type":I
    :cond_2
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 323
    .local v12, "rootTag":Ljava/lang/String;
    const-string v18, "ContactsAccountType"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "ContactsSource"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 325
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Top level element must be ContactsAccountType, not "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 433
    .end local v12    # "rootTag":Ljava/lang/String;
    .end local v16    # "type":I
    :catch_1
    move-exception v9

    .line 434
    .local v9, "e":Ljava/io/IOException;
    new-instance v18, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    const-string v19, "Problem reading XML"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v18

    .line 329
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "rootTag":Ljava/lang/String;
    .restart local v16    # "type":I
    :cond_3
    const/16 v18, 0x1

    :try_start_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mHasContactsMetadata:Z

    .line 331
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    .line 332
    .local v5, "attributeCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v5, :cond_19

    .line 333
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "attr":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 335
    .local v17, "value":Ljava/lang/String;
    const-string v18, "ExternalAccountType"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 336
    const-string v18, "ExternalAccountType"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_4
    const-string v18, "editContactActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 339
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

    .line 332
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 340
    :cond_5
    const-string v18, "createContactActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 341
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    goto :goto_1

    .line 342
    :cond_6
    const-string v18, "inviteContactActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 343
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    goto :goto_1

    .line 344
    :cond_7
    const-string v18, "inviteContactActionLabel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 345
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    goto :goto_1

    .line 346
    :cond_8
    const-string v18, "viewContactNotifyService"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 347
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    goto :goto_1

    .line 348
    :cond_9
    const-string v18, "viewGroupActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 349
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    goto :goto_1

    .line 350
    :cond_a
    const-string v18, "viewGroupActionLabel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 351
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    goto :goto_1

    .line 352
    :cond_b
    const-string v18, "viewStreamItemActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 353
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mViewStreamItemActivity:Ljava/lang/String;

    goto :goto_1

    .line 354
    :cond_c
    const-string v18, "viewStreamItemPhotoActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 355
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mViewStreamItemPhotoActivity:Ljava/lang/String;

    goto/16 :goto_1

    .line 356
    :cond_d
    const-string v18, "dataSet"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 357
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    goto/16 :goto_1

    .line 358
    :cond_e
    const-string v18, "extensionPackageNames"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 360
    :cond_f
    const-string v18, "accountType"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 361
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    goto/16 :goto_1

    .line 362
    :cond_10
    const-string v18, "accountTypeLabel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 363
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 364
    :cond_11
    const-string v18, "accountTypeIcon"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 365
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 367
    :cond_12
    const-string v18, "isContactDeletable"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 368
    const-string v18, "false"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_13

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mIsContactDeletable:Z

    goto/16 :goto_1

    :cond_13
    const/16 v18, 0x0

    goto :goto_2

    .line 369
    :cond_14
    const-string v18, "isContactJoinable"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 370
    const-string v18, "false"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mIsContactJoinable:Z

    goto/16 :goto_1

    :cond_15
    const/16 v18, 0x0

    goto :goto_3

    .line 371
    :cond_16
    const-string v18, "deleteNotAllowedMessage"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 372
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mDeleteNotAllowedMessageAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 373
    :cond_17
    const-string v18, "joinNotAllowedMessage"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 374
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mJoinNotAllowedMessageAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 377
    :cond_18
    const-string v18, "ExternalAccountType"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unsupported attribute "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 382
    .end local v4    # "attr":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_19
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 385
    .local v13, "startDepth":I
    :cond_1a
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v13, :cond_20

    :cond_1b
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_20

    .line 387
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 391
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 392
    .local v15, "tag":Ljava/lang/String;
    const-string v18, "EditSchema"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 393
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/model/account/ExternalAccountType;->mHasEditSchema:Z

    .line 394
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/contacts/model/account/ExternalAccountType;->parseEditSchema(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 395
    :cond_1c
    const-string v18, "ContactsDataKind"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 396
    sget-object v18, Landroid/R$styleable;->ContactsDataKind:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 398
    .local v3, "a":Landroid/content/res/TypedArray;
    new-instance v11, Lcom/android/contacts/model/dataitem/DataKind;

    invoke-direct {v11}, Lcom/android/contacts/model/dataitem/DataKind;-><init>()V

    .line 400
    .local v11, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 403
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 405
    .local v14, "summaryColumn":Ljava/lang/String;
    if-eqz v14, :cond_1d

    .line 407
    new-instance v18, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 410
    :cond_1d
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 412
    .local v7, "detailColumn":Ljava/lang/String;
    const/16 v18, 0x4

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 416
    .local v8, "detailSocialSummary":Z
    if-eqz v8, :cond_1e

    .line 418
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v11, Lcom/android/contacts/model/dataitem/DataKind;->actionBodySocial:Z

    .line 421
    :cond_1e
    if-eqz v7, :cond_1f

    .line 423
    new-instance v18, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 426
    :cond_1f
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 428
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/contacts/model/account/ExternalAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 436
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "detailColumn":Ljava/lang/String;
    .end local v8    # "detailSocialSummary":Z
    .end local v11    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v14    # "summaryColumn":Ljava/lang/String;
    .end local v15    # "tag":Ljava/lang/String;
    :cond_20
    return-void
.end method

.method public isEmbedded()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public isExtension()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mIsExtension:Z

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 478
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/ExternalAccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
