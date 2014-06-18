.class Lcom/android/contacts/dialpad/DialpadFragment$1;
.super Landroid/telephony/PhoneStateListener;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 224
    if-nez p1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    # getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->access$000(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    # getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->access$000(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    # invokes: Lcom/android/contacts/dialpad/DialpadFragment;->dialpadChooserVisible()Z
    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->access$100(Lcom/android/contacts/dialpad/DialpadFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V
    invoke-static {v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$200(Lcom/android/contacts/dialpad/DialpadFragment;Z)V

    .line 240
    :cond_1
    return-void
.end method
