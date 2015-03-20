.class public final Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderInfo"
.end annotation


# instance fields
.field private mHasFriendsCapability:Z

.field private mHasSMTPCapability:Z

.field private final mId:J

.field private final mName:Ljava/lang/String;

.field private final mPrettyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "prettyName"    # Ljava/lang/String;

    .prologue
    .line 1788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1789
    iput-wide p1, p0, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->mId:J

    .line 1790
    iput-object p3, p0, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->mName:Ljava/lang/String;

    .line 1791
    iput-object p4, p0, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->mPrettyName:Ljava/lang/String;

    .line 1792
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 1781
    invoke-direct {p0, p1}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->setSMTPCapability(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 1781
    invoke-direct {p0, p1}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->setFriendsCapability(Z)V

    return-void
.end method

.method private setFriendsCapability(Z)V
    .locals 0
    .param p1, "hasFriendsCapability"    # Z

    .prologue
    .line 1807
    iput-boolean p1, p0, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->mHasFriendsCapability:Z

    .line 1808
    return-void
.end method

.method private setSMTPCapability(Z)V
    .locals 0
    .param p1, "hasSMTPCapability"    # Z

    .prologue
    .line 1819
    iput-boolean p1, p0, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->mHasSMTPCapability:Z

    .line 1820
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 1795
    iget-wide v0, p0, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->mPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method public hasFriendsCapability()Z
    .locals 1

    .prologue
    .line 1811
    iget-boolean v0, p0, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->mHasFriendsCapability:Z

    return v0
.end method

.method public hasHasSMTPCapability()Z
    .locals 1

    .prologue
    .line 1815
    iget-boolean v0, p0, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->mHasSMTPCapability:Z

    return v0
.end method
