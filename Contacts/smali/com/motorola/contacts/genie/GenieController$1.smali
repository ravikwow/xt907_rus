.class Lcom/motorola/contacts/genie/GenieController$1;
.super Ljava/lang/Object;
.source "GenieController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/genie/GenieController;->setUpNavigator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/genie/GenieController;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/genie/GenieController;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/motorola/contacts/genie/GenieController$1;->this$0:Lcom/motorola/contacts/genie/GenieController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController$1;->this$0:Lcom/motorola/contacts/genie/GenieController;

    # getter for: Lcom/motorola/contacts/genie/GenieController;->mCurrentScreenFrame:I
    invoke-static {v0}, Lcom/motorola/contacts/genie/GenieController;->access$000(Lcom/motorola/contacts/genie/GenieController;)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/contacts/genie/GenieController$1;->this$0:Lcom/motorola/contacts/genie/GenieController;

    # getter for: Lcom/motorola/contacts/genie/GenieController;->mCurrentQuestViewer:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lcom/motorola/contacts/genie/GenieController;->access$100(Lcom/motorola/contacts/genie/GenieController;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController$1;->this$0:Lcom/motorola/contacts/genie/GenieController;

    invoke-virtual {v0}, Lcom/motorola/contacts/genie/GenieController;->hideGenieCling()V

    .line 132
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController$1;->this$0:Lcom/motorola/contacts/genie/GenieController;

    # invokes: Lcom/motorola/contacts/genie/GenieController;->completeQuest()V
    invoke-static {v0}, Lcom/motorola/contacts/genie/GenieController;->access$200(Lcom/motorola/contacts/genie/GenieController;)V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController$1;->this$0:Lcom/motorola/contacts/genie/GenieController;

    # operator++ for: Lcom/motorola/contacts/genie/GenieController;->mCurrentScreenFrame:I
    invoke-static {v0}, Lcom/motorola/contacts/genie/GenieController;->access$008(Lcom/motorola/contacts/genie/GenieController;)I

    .line 136
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController$1;->this$0:Lcom/motorola/contacts/genie/GenieController;

    # invokes: Lcom/motorola/contacts/genie/GenieController;->setUpCurrentScreen()V
    invoke-static {v0}, Lcom/motorola/contacts/genie/GenieController;->access$300(Lcom/motorola/contacts/genie/GenieController;)V

    goto :goto_0
.end method
