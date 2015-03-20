.class public Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Default;
.super Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BackgroundSetupForQAMap_Default"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 5517
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;-><init>(Ljava/lang/String;I)V

    .line 5518
    return-void
.end method
