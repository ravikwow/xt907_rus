.class Lcom/android/contacts/dialpad/SmartDialerAdapter$2;
.super Ljava/lang/Object;
.source "SmartDialerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/dialpad/SmartDialerAdapter;->setCommonView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    iput-object p2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$2;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 506
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$2;->val$number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$200(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0700d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 508
    .local v0, "et":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$2;->val$number:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 510
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$000(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 511
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    iput-boolean v3, v1, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAutoExpandList:Z

    .line 512
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$2;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$000(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    .line 513
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/motorola/contacts/util/MEDialer;->setSmartDialer(Z)V

    .line 515
    .end local v0    # "et":Landroid/widget/EditText;
    :cond_0
    return-void
.end method
