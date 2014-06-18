.class Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;
.super Ljava/lang/Object;
.source "SmartDialerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->setCommonView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    iput-object p2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->val$number:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 530
    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    const-string v4, "callerDetail.setOnClickListener():  onClick() called"

    # invokes: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 531
    :cond_0
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->val$number:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 532
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$000(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/dialpad/DialpadFragment;->setSkipNextQuery()V

    .line 533
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;
    invoke-static {v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$400(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 534
    .local v2, "et":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->val$number:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 535
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 536
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$000(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 537
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    iput-boolean v5, v3, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAutoExpandList:Z

    .line 538
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$000(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    .line 539
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/motorola/contacts/util/MEDialer;->setSmartDialer(Z)V

    .line 543
    .end local v2    # "et":Landroid/widget/EditText;
    :cond_1
    const/4 v1, 0x0

    .line 545
    .local v1, "cursorPositionStr":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cursorPositionStr":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 548
    .restart local v1    # "cursorPositionStr":Ljava/lang/String;
    :cond_2
    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callerDetail.setOnClickListener():  cursorPositionStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 549
    :cond_3
    if-eqz v1, :cond_5

    .line 550
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 551
    .local v0, "cursorPosition":I
    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$200()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callerDetail.setOnClickListener():  calling updateSingleItemAndTitle(): cursorPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 553
    :cond_4
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v3, v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->updateSingleItemAndTitle(I)V

    .line 555
    .end local v0    # "cursorPosition":I
    :cond_5
    return-void
.end method
