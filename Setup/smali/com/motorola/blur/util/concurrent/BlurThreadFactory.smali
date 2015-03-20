.class public Lcom/motorola/blur/util/concurrent/BlurThreadFactory;
.super Ljava/lang/Object;
.source "BlurThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/util/concurrent/BlurThreadFactory$BlurPooledThread;
    }
.end annotation


# instance fields
.field private mCounter:I

.field private final mName:Ljava/lang/String;

.field private final mPriority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;-><init>(Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;->mCounter:I

    .line 32
    iput-object p1, p0, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;->mName:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;->mPriority:I

    .line 34
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    new-instance v0, Lcom/motorola/blur/util/concurrent/BlurThreadFactory$BlurPooledThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;->mCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;->mCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;->mPriority:I

    invoke-direct {v0, p1, v1, v2}, Lcom/motorola/blur/util/concurrent/BlurThreadFactory$BlurPooledThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v0
.end method
