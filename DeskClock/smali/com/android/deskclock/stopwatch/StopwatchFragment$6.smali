.class Lcom/android/deskclock/stopwatch/StopwatchFragment$6;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;->showSharePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$6;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$6;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$802(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    .line 656
    return-void
.end method
