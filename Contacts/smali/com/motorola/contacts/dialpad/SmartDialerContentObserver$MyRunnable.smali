.class final Lcom/motorola/contacts/dialpad/SmartDialerContentObserver$MyRunnable;
.super Ljava/lang/Object;
.source "SmartDialerContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/dialpad/SmartDialerContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyRunnable"
.end annotation


# instance fields
.field private mSelf:Z

.field final synthetic this$0:Lcom/motorola/contacts/dialpad/SmartDialerContentObserver;


# direct methods
.method public constructor <init>(Lcom/motorola/contacts/dialpad/SmartDialerContentObserver;Z)V
    .locals 0
    .param p2, "self"    # Z

    .prologue
    .line 21
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerContentObserver$MyRunnable;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerContentObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p2, p0, Lcom/motorola/contacts/dialpad/SmartDialerContentObserver$MyRunnable;->mSelf:Z

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerContentObserver$MyRunnable;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerContentObserver;

    iget-boolean v1, p0, Lcom/motorola/contacts/dialpad/SmartDialerContentObserver$MyRunnable;->mSelf:Z

    invoke-virtual {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerContentObserver;->onChangeRealNeeded(Z)V

    .line 27
    return-void
.end method
