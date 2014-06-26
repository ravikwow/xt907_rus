.class Lcom/android/deskclock/ScreensaverActivity$3;
.super Ljava/lang/Object;
.source "ScreensaverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ScreensaverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ScreensaverActivity;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ScreensaverActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity$3;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity$3;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    # getter for: Lcom/android/deskclock/ScreensaverActivity;->mDateFormat:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/deskclock/ScreensaverActivity;->access$200(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity$3;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    # getter for: Lcom/android/deskclock/ScreensaverActivity;->mDateFormatForAccessibility:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/deskclock/ScreensaverActivity;->access$300(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity$3;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    # getter for: Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/ScreensaverActivity;->access$400(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity$3;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    # getter for: Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/deskclock/ScreensaverActivity;->access$500(Lcom/android/deskclock/ScreensaverActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity$3;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    # getter for: Lcom/android/deskclock/ScreensaverActivity;->mMidnightUpdater:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/deskclock/ScreensaverActivity;->access$600(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method
