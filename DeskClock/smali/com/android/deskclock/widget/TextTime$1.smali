.class Lcom/android/deskclock/widget/TextTime$1;
.super Landroid/database/ContentObserver;
.source "TextTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/TextTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/widget/TextTime;


# direct methods
.method constructor <init>(Lcom/android/deskclock/widget/TextTime;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/deskclock/widget/TextTime$1;->this$0:Lcom/android/deskclock/widget/TextTime;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/deskclock/widget/TextTime$1;->this$0:Lcom/android/deskclock/widget/TextTime;

    # invokes: Lcom/android/deskclock/widget/TextTime;->chooseFormat()V
    invoke-static {v0}, Lcom/android/deskclock/widget/TextTime;->access$000(Lcom/android/deskclock/widget/TextTime;)V

    .line 44
    iget-object v0, p0, Lcom/android/deskclock/widget/TextTime$1;->this$0:Lcom/android/deskclock/widget/TextTime;

    # invokes: Lcom/android/deskclock/widget/TextTime;->updateTime()V
    invoke-static {v0}, Lcom/android/deskclock/widget/TextTime;->access$100(Lcom/android/deskclock/widget/TextTime;)V

    .line 45
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/deskclock/widget/TextTime$1;->this$0:Lcom/android/deskclock/widget/TextTime;

    # invokes: Lcom/android/deskclock/widget/TextTime;->chooseFormat()V
    invoke-static {v0}, Lcom/android/deskclock/widget/TextTime;->access$000(Lcom/android/deskclock/widget/TextTime;)V

    .line 50
    iget-object v0, p0, Lcom/android/deskclock/widget/TextTime$1;->this$0:Lcom/android/deskclock/widget/TextTime;

    # invokes: Lcom/android/deskclock/widget/TextTime;->updateTime()V
    invoke-static {v0}, Lcom/android/deskclock/widget/TextTime;->access$100(Lcom/android/deskclock/widget/TextTime;)V

    .line 51
    return-void
.end method
