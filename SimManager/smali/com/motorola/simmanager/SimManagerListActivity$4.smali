.class Lcom/motorola/simmanager/SimManagerListActivity$4;
.super Ljava/lang/Object;
.source "SimManagerListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/simmanager/SimManagerListActivity;->initSearchUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/simmanager/SimManagerListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/SimManagerListActivity;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/motorola/simmanager/SimManagerListActivity$4;->this$0:Lcom/motorola/simmanager/SimManagerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 372
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity$4;->this$0:Lcom/motorola/simmanager/SimManagerListActivity;

    # getter for: Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/motorola/simmanager/SimManagerListActivity;->access$000(Lcom/motorola/simmanager/SimManagerListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity$4;->this$0:Lcom/motorola/simmanager/SimManagerListActivity;

    # getter for: Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/motorola/simmanager/SimManagerListActivity;->access$000(Lcom/motorola/simmanager/SimManagerListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
