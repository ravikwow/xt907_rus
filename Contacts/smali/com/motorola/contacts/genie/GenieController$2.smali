.class Lcom/motorola/contacts/genie/GenieController$2;
.super Landroid/telephony/PhoneStateListener;
.source "GenieController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/genie/GenieController;->setUpPhoneStateListener()V
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
    .line 163
    iput-object p1, p0, Lcom/motorola/contacts/genie/GenieController$2;->this$0:Lcom/motorola/contacts/genie/GenieController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController$2;->this$0:Lcom/motorola/contacts/genie/GenieController;

    invoke-virtual {v0}, Lcom/motorola/contacts/genie/GenieController;->hideGenieCling()V

    .line 170
    :cond_0
    return-void
.end method
