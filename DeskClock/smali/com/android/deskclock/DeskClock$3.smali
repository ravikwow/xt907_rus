.class Lcom/android/deskclock/DeskClock$3;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClock;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$3;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$3;->this$0:Lcom/android/deskclock/DeskClock;

    # getter for: Lcom/android/deskclock/DeskClock;->mDimmed:Z
    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$500(Lcom/android/deskclock/DeskClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$3;->this$0:Lcom/android/deskclock/DeskClock;

    const/4 v1, 0x0

    # setter for: Lcom/android/deskclock/DeskClock;->mDimmed:Z
    invoke-static {v0, v1}, Lcom/android/deskclock/DeskClock;->access$502(Lcom/android/deskclock/DeskClock;Z)Z

    .line 497
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$3;->this$0:Lcom/android/deskclock/DeskClock;

    const/4 v1, 0x1

    # invokes: Lcom/android/deskclock/DeskClock;->doDim(Z)V
    invoke-static {v0, v1}, Lcom/android/deskclock/DeskClock;->access$600(Lcom/android/deskclock/DeskClock;Z)V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$3;->this$0:Lcom/android/deskclock/DeskClock;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/deskclock/DeskClock$3;->this$0:Lcom/android/deskclock/DeskClock;

    const-class v3, Lcom/android/deskclock/AlarmClock;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 500
    return-void
.end method
