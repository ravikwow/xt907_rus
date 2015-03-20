.class public Lcom/motorola/messaging/model/ContentRestrictionManager;
.super Ljava/lang/Object;
.source "ContentRestrictionManager.java"


# static fields
.field private static final LOCAL_LOG:Z

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/model/ContentRestrictionManager;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;
    .locals 5
    .param p0, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;

    .prologue
    const/4 v4, 0x1

    .line 40
    sget-boolean v1, Lcom/motorola/messaging/model/ContentRestrictionManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 41
    const-string v1, "ContentRestrictionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentRestriction, creationMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v4, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 44
    :cond_0
    if-nez p0, :cond_1

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mode can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_1
    new-instance v0, Lcom/motorola/messaging/model/CarrierContentRestriction;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/model/CarrierContentRestriction;-><init>(Lcom/motorola/messaging/model/Model$CreationMode;)V

    .line 49
    .local v0, "carrierRestriction":Lcom/motorola/messaging/model/CarrierContentRestriction;
    sget-object v1, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    if-ne p0, v1, :cond_3

    :cond_2
    sget-object v1, Lcom/motorola/messaging/model/ContentRestrictionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getMmsRestrictionMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    new-instance v1, Lcom/motorola/messaging/model/ContentRestrictionMode;

    invoke-direct {v1, v0}, Lcom/motorola/messaging/model/ContentRestrictionMode;-><init>(Lcom/motorola/messaging/model/CarrierContentRestriction;)V

    move-object v0, v1

    .line 54
    .end local v0    # "carrierRestriction":Lcom/motorola/messaging/model/CarrierContentRestriction;
    :cond_3
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sput-object p0, Lcom/motorola/messaging/model/ContentRestrictionManager;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method
