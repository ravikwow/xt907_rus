.class Lcom/android/deskclock/Screensaver$1;
.super Landroid/database/ContentObserver;
.source "Screensaver.java"


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
.method constructor <init>(Lcom/android/deskclock/Screensaver;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/deskclock/Screensaver$1;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/deskclock/Screensaver$1;->this$0:Lcom/android/deskclock/Screensaver;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver$1;->this$0:Lcom/android/deskclock/Screensaver;

    # getter for: Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/deskclock/Screensaver;->access$000(Lcom/android/deskclock/Screensaver;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 52
    return-void
.end method
