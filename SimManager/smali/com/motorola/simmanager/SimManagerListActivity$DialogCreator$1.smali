.class Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$1;
.super Ljava/lang/Object;
.source "SimManagerListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$1;->this$1:Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 405
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x1

    .line 408
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
