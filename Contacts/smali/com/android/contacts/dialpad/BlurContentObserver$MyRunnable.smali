.class final Lcom/android/contacts/dialpad/BlurContentObserver$MyRunnable;
.super Ljava/lang/Object;
.source "BlurContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/BlurContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyRunnable"
.end annotation


# instance fields
.field private mSelf:Z

.field final synthetic this$0:Lcom/android/contacts/dialpad/BlurContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/contacts/dialpad/BlurContentObserver;Z)V
    .locals 0
    .param p2, "self"    # Z

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/contacts/dialpad/BlurContentObserver$MyRunnable;->this$0:Lcom/android/contacts/dialpad/BlurContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p2, p0, Lcom/android/contacts/dialpad/BlurContentObserver$MyRunnable;->mSelf:Z

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/contacts/dialpad/BlurContentObserver$MyRunnable;->this$0:Lcom/android/contacts/dialpad/BlurContentObserver;

    iget-boolean v1, p0, Lcom/android/contacts/dialpad/BlurContentObserver$MyRunnable;->mSelf:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/dialpad/BlurContentObserver;->onChangeRealNeeded(Z)V

    .line 27
    return-void
.end method
