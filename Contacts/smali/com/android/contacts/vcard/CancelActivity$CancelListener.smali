.class Lcom/android/contacts/vcard/CancelActivity$CancelListener;
.super Ljava/lang/Object;
.source "CancelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/CancelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/CancelActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/CancelActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/contacts/vcard/CancelActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/CancelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/CancelActivity;Lcom/android/contacts/vcard/CancelActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/vcard/CancelActivity;
    .param p2, "x1"    # Lcom/android/contacts/vcard/CancelActivity$1;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/CancelActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/CancelActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/vcard/CancelActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/CancelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 88
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/vcard/CancelActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/CancelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 84
    return-void
.end method
