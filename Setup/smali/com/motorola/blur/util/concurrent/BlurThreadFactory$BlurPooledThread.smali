.class public final Lcom/motorola/blur/util/concurrent/BlurThreadFactory$BlurPooledThread;
.super Ljava/lang/Thread;
.source "BlurThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/util/concurrent/BlurThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlurPooledThread"
.end annotation


# instance fields
.field private final mPriority:I


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    iput p3, p0, Lcom/motorola/blur/util/concurrent/BlurThreadFactory$BlurPooledThread;->mPriority:I

    .line 53
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/motorola/blur/util/concurrent/BlurThreadFactory$BlurPooledThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 58
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 59
    return-void
.end method
