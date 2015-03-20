.class public Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;
    }
.end annotation


# static fields
.field public static final PREFERRED_IMAGE_SRC:Ljava/lang/String; = "Preferred_Image_Src"


# instance fields
.field mContext:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

.field mCurrentSocialNetwork:Ljava/lang/String;

.field mDeviceSourceName:Ljava/lang/String;

.field mId:J

.field mPreferredId:J

.field mPreferredSource:Ljava/lang/String;

.field mPreferredSourceDataType:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

.field mSNDataType:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 948
    sget-object v2, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;->DEVICE_CONTEXT:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v3, "blur"

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;-><init>(Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->NONE:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    iput-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mSNDataType:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    .line 950
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->SN_NAME:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    iput-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mPreferredSourceDataType:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    .line 951
    return-void
.end method

.method constructor <init>(Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;
    .param p2, "preferredSN"    # Ljava/lang/String;
    .param p3, "currentSN"    # Ljava/lang/String;
    .param p4, "deviceSourceName"    # Ljava/lang/String;

    .prologue
    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput-object p1, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mContext:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

    .line 994
    iput-object p4, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mDeviceSourceName:Ljava/lang/String;

    .line 995
    iput-object p2, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mPreferredSource:Ljava/lang/String;

    .line 996
    iput-object p3, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mCurrentSocialNetwork:Ljava/lang/String;

    .line 997
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "currentSocialNetwork"    # Ljava/lang/String;

    .prologue
    .line 954
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;->SOCIAL_NETWORKING_CONTEXT:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

    const/4 v1, 0x0

    const-string v2, "blur"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;-><init>(Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->SN_NAME:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    iput-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mSNDataType:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    .line 957
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->SN_NAME:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    iput-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mPreferredSourceDataType:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    .line 958
    return-void
.end method

.method private getProviderIdFromAccount(Landroid/content/Context;J)J
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # J

    .prologue
    .line 1037
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 1038
    const-string v7, "_id=?"

    .line 1039
    .local v7, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1041
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "provider_id"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1047
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1051
    if-eqz v6, :cond_0

    .line 1052
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1056
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "selection":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v0

    .line 1051
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "selection":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 1052
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1056
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "selection":Ljava/lang/String;
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1051
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1052
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getProviderIdFromName(Landroid/content/Context;Ljava/lang/String;)J
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1014
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1015
    const-string v7, "provider=?"

    .line 1016
    .local v7, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1018
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "provider=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1024
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1028
    if-eqz v6, :cond_0

    .line 1029
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1033
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "selection":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v0

    .line 1028
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "selection":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 1029
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1033
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "selection":Ljava/lang/String;
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1028
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1029
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public getSNDataType()Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mSNDataType:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    return-object v0
.end method

.method public getSocialNetworkAccount()J
    .locals 2

    .prologue
    .line 973
    iget-wide v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mId:J

    return-wide v0
.end method

.method public getSocialNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mCurrentSocialNetwork:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialNetworkProvider()J
    .locals 2

    .prologue
    .line 969
    iget-wide v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mId:J

    return-wide v0
.end method

.method public getSocialNetworkProviderId(Landroid/content/Context;)J
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mContext:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

    sget-object v1, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;->SOCIAL_NETWORKING_CONTEXT:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

    if-ne v0, v1, :cond_0

    .line 1001
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$1;->$SwitchMap$com$motorola$blur$provider$contactsExtensions$BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData:[I

    iget-object v1, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mSNDataType:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1010
    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 1003
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mCurrentSocialNetwork:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->getProviderIdFromName(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 1005
    :pswitch_1
    iget-wide v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mId:J

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->getProviderIdFromAccount(Landroid/content/Context;J)J

    move-result-wide v0

    goto :goto_0

    .line 1007
    :pswitch_2
    iget-wide v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mId:J

    goto :goto_0

    .line 1001
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getType()Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mContext:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

    return-object v0
.end method

.method public setSNAccount(J)V
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 977
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->SN_ACCOUNT:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    iput-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mSNDataType:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    .line 978
    iput-wide p1, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mId:J

    .line 979
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;->SOCIAL_NETWORKING_CONTEXT:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

    iput-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mContext:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

    .line 980
    return-void
.end method

.method public setSNProvider(J)V
    .locals 1
    .param p1, "providerId"    # J

    .prologue
    .line 983
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->SN_PROVIDER:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    iput-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mSNDataType:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    .line 984
    iput-wide p1, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mId:J

    .line 985
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;->SOCIAL_NETWORKING_CONTEXT:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

    iput-object v0, p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->mContext:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

    .line 986
    return-void
.end method
