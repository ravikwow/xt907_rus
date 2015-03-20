.class final Lcom/motorola/messaging/settings/MessageSettings$2;
.super Ljava/lang/Object;
.source "MessageSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/settings/MessageSettings;->loadEncodingSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->loadEncodingOptions()V

    .line 351
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getEncodingMethod()I

    move-result v0

    .line 352
    .local v0, "encodingMethod":I
    # invokes: Lcom/motorola/messaging/settings/MessageSettings;->checkIfSelectedMethodIsValid(I)Z
    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->access$400(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->setEncodingMethod(I)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    # getter for: Lcom/motorola/messaging/settings/MessageSettings;->mLanguageDefaultOption:I
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->access$500()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/messaging/settings/MessageSettings;->setEncodingMethod(I)V

    goto :goto_0
.end method
