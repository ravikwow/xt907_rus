.class Lcom/android/deskclock/Screensaver$2;
.super Ljava/lang/Object;
.source "Screensaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/Screensaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/Screensaver;


# direct methods
.method constructor <init>(Lcom/android/deskclock/Screensaver;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    # getter for: Lcom/android/deskclock/Screensaver;->mDateFormat:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/deskclock/Screensaver;->access$100(Lcom/android/deskclock/Screensaver;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    # getter for: Lcom/android/deskclock/Screensaver;->mDateFormatForAccessibility:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/deskclock/Screensaver;->access$200(Lcom/android/deskclock/Screensaver;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    # getter for: Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/Screensaver;->access$000(Lcom/android/deskclock/Screensaver;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    # getter for: Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/deskclock/Screensaver;->access$300(Lcom/android/deskclock/Screensaver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    # getter for: Lcom/android/deskclock/Screensaver;->mMidnightUpdater:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/deskclock/Screensaver;->access$400(Lcom/android/deskclock/Screensaver;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method
