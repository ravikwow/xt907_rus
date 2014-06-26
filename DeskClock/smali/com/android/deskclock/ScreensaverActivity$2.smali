.class Lcom/android/deskclock/ScreensaverActivity$2;
.super Landroid/database/ContentObserver;
.source "ScreensaverActivity.java"


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
.method constructor <init>(Lcom/android/deskclock/ScreensaverActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity$2;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity$2;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity$2;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    # getter for: Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/deskclock/ScreensaverActivity;->access$400(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 87
    return-void
.end method
