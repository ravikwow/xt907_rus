.class Lcom/android/contacts/dialpad/SmartDialerAdapter$3;
.super Ljava/lang/Object;
.source "SmartDialerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/dialpad/SmartDialerAdapter;->setItemView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;Landroid/view/View;)V
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
    .line 571
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$3;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    iput-object p2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$3;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 573
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$3;->val$number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 577
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$3;->val$number:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 579
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/motorola/contacts/util/MEDialer;->getQwertyKeypad()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$3;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->QWERTY:Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    invoke-static {v2, v1, v3}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;)V

    .line 584
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$3;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 586
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$3;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$200(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0700d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 587
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 589
    .end local v0    # "et":Landroid/widget/EditText;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 582
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$3;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->SOFT:Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    invoke-static {v2, v1, v3}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;)V

    goto :goto_0
.end method
