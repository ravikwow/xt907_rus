.class Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;
.super Ljava/lang/Object;
.source "SelectAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/SelectAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/SelectAccountActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/SelectAccountActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/SelectAccountActivity;Lcom/android/contacts/vcard/SelectAccountActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/vcard/SelectAccountActivity;
    .param p2, "x1"    # Lcom/android/contacts/vcard/SelectAccountActivity$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/SelectAccountActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 46
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 47
    iget-object v0, p0, Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/SelectAccountActivity;->finish()V

    .line 48
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    iget-object v0, p0, Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/SelectAccountActivity;->finish()V

    .line 44
    return-void
.end method
