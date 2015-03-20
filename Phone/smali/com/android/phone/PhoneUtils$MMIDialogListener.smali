.class Lcom/android/phone/PhoneUtils$MMIDialogListener;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MMIDialogListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 3592
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    .line 3593
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 3596
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    .line 3597
    return-void
.end method
