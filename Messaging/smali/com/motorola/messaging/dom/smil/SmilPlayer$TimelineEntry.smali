.class final Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
.super Ljava/lang/Object;
.source "SmilPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/dom/smil/SmilPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimelineEntry"
.end annotation


# instance fields
.field private final mAction:I

.field private final mElement:Lorg/w3c/dom/smil/ElementTime;

.field private final mOffsetTime:D


# direct methods
.method public constructor <init>(DLorg/w3c/dom/smil/ElementTime;I)V
    .locals 0
    .param p1, "offsetTime"    # D
    .param p3, "element"    # Lorg/w3c/dom/smil/ElementTime;
    .param p4, "action"    # I

    .prologue
    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    iput-wide p1, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    .line 863
    iput-object p3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->mElement:Lorg/w3c/dom/smil/ElementTime;

    .line 864
    iput p4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->mAction:I

    .line 865
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)D
    .locals 2
    .param p0, "x0"    # Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    .line 853
    iget-wide v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    return-wide v0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 876
    iget v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->mAction:I

    return v0
.end method

.method public getElement()Lorg/w3c/dom/smil/ElementTime;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->mElement:Lorg/w3c/dom/smil/ElementTime;

    return-object v0
.end method

.method public getOffsetTime()D
    .locals 2

    .prologue
    .line 868
    iget-wide v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    return-wide v0
.end method
