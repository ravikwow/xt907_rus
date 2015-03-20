.class Lcom/motorola/simmanager/SimManagerListActivity$3;
.super Ljava/lang/Object;
.source "SimManagerListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 353
    iput-object p1, p0, Lcom/motorola/simmanager/SimManagerListActivity$3;->this$0:Lcom/motorola/simmanager/SimManagerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 356
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity$3;->this$0:Lcom/motorola/simmanager/SimManagerListActivity;

    # getter for: Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerListActivity;->access$000(Lcom/motorola/simmanager/SimManagerListActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "constraint":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity$3;->this$0:Lcom/motorola/simmanager/SimManagerListActivity;

    invoke-virtual {v1, v0}, Lcom/motorola/simmanager/SimManagerListActivity;->OnSearchViewTextChange(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 362
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 366
    return-void
.end method
