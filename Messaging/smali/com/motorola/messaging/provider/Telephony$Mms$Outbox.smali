.class public final Lcom/motorola/messaging/provider/Telephony$Mms$Outbox;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Lcom/motorola/messaging/provider/Telephony$BaseMmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/provider/Telephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Outbox"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1802
    const-string v0, "content://mms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
