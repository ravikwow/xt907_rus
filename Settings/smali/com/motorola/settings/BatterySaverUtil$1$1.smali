.class Lcom/motorola/settings/BatterySaverUtil$1$1;
.super Ljava/lang/Object;
.source "BatterySaverUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/settings/BatterySaverUtil$1;->onPreferenceClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/settings/BatterySaverUtil$1;


# direct methods
.method constructor <init>(Lcom/motorola/settings/BatterySaverUtil$1;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/settings/BatterySaverUtil$1$1;->this$0:Lcom/motorola/settings/BatterySaverUtil$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 63
    return-void
.end method
