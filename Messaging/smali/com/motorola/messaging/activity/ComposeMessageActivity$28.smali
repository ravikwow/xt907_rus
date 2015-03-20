.class Lcom/motorola/messaging/activity/ComposeMessageActivity$28;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$adapter:Lcom/motorola/messaging/adapter/SmileyAdapter;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/adapter/SmileyAdapter;)V
    .locals 0

    .prologue
    .line 2660
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$28;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$28;->val$adapter:Lcom/motorola/messaging/adapter/SmileyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2662
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$28;->val$adapter:Lcom/motorola/messaging/adapter/SmileyAdapter;

    invoke-virtual {v1, p3}, Lcom/motorola/messaging/adapter/SmileyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2663
    .local v0, "smiley":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$28;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->insertText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3700(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/String;)V

    .line 2664
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$28;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V

    .line 2665
    return-void
.end method
