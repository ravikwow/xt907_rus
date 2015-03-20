.class public final Lcom/motorola/blur/provider/DeviceSetup$GAMSAccount;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GAMSAccount"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ":"


# instance fields
.field private mAccountId:J

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 1996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1997
    iput-object p1, p0, Lcom/motorola/blur/provider/DeviceSetup$GAMSAccount;->mName:Ljava/lang/String;

    .line 1998
    if-eqz p2, :cond_0

    .line 2000
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/blur/provider/DeviceSetup$GAMSAccount;->mAccountId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2007
    :cond_0
    :goto_0
    return-void

    .line 2001
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final compose(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "accountID"    # Ljava/lang/String;

    .prologue
    .line 2011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final parse(Landroid/accounts/Account;)Lcom/motorola/blur/provider/DeviceSetup$GAMSAccount;
    .locals 5
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    .line 2015
    if-eqz p0, :cond_1

    .line 2016
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 2017
    .local v0, "accountName":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2018
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 2019
    new-instance v2, Lcom/motorola/blur/provider/DeviceSetup$GAMSAccount;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-direct {v2, v3, v4}, Lcom/motorola/blur/provider/DeviceSetup$GAMSAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "tokens":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2021
    .restart local v0    # "accountName":Ljava/lang/String;
    .restart local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/motorola/blur/provider/DeviceSetup$GAMSAccount;

    invoke-direct {v2, v0, v3}, Lcom/motorola/blur/provider/DeviceSetup$GAMSAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 2024
    goto :goto_0
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    .prologue
    .line 2032
    iget-wide v0, p0, Lcom/motorola/blur/provider/DeviceSetup$GAMSAccount;->mAccountId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/motorola/blur/provider/DeviceSetup$GAMSAccount;->mName:Ljava/lang/String;

    return-object v0
.end method
