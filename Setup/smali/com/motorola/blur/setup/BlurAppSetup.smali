.class public Lcom/motorola/blur/setup/BlurAppSetup;
.super Lcom/motorola/blur/util/BlurApp;
.source "BlurAppSetup.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mFSM:Lcom/motorola/blur/fsm/SetupFSM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "BlurAppSetup"

    sput-object v0, Lcom/motorola/blur/setup/BlurAppSetup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/motorola/blur/util/BlurApp;-><init>()V

    return-void
.end method


# virtual methods
.method public getFSM()Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAppSetup;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 17
    invoke-super {p0}, Lcom/motorola/blur/util/BlurApp;->onCreate()V

    .line 19
    sget-object v0, Lcom/motorola/blur/setup/BlurAppSetup;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "App onCreate"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 21
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSM;

    invoke-direct {v0}, Lcom/motorola/blur/fsm/SetupFSM;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAppSetup;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    .line 22
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAppSetup;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupFSM;->start()V

    .line 23
    return-void
.end method

.method public setFSM(Lcom/motorola/blur/fsm/SetupFSM;)V
    .locals 0
    .param p1, "instance"    # Lcom/motorola/blur/fsm/SetupFSM;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurAppSetup;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    .line 31
    return-void
.end method
