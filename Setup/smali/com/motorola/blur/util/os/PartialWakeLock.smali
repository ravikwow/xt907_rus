.class public final Lcom/motorola/blur/util/os/PartialWakeLock;
.super Ljava/lang/Object;
.source "PartialWakeLock.java"


# instance fields
.field private volatile mLockCount:I

.field private final mReferenced:Landroid/os/PowerManager$WakeLock;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 43
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v2, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/util/os/PartialWakeLock;->mReferenced:Landroid/os/PowerManager$WakeLock;

    .line 44
    iget-object v1, p0, Lcom/motorola/blur/util/os/PartialWakeLock;->mReferenced:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 45
    iput-object p2, p0, Lcom/motorola/blur/util/os/PartialWakeLock;->mTag:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/blur/util/os/PartialWakeLock;->mReferenced:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 53
    iget v0, p0, Lcom/motorola/blur/util/os/PartialWakeLock;->mLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/blur/util/os/PartialWakeLock;->mLockCount:I

    .line 57
    return-void
.end method

.method public isHeld()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/blur/util/os/PartialWakeLock;->mReferenced:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/blur/util/os/PartialWakeLock;->mReferenced:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 64
    iget v0, p0, Lcom/motorola/blur/util/os/PartialWakeLock;->mLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/motorola/blur/util/os/PartialWakeLock;->mLockCount:I

    .line 68
    return-void
.end method
