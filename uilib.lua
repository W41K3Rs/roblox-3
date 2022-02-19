-- // ui lib

_G.lib = [[function toggleNoClip()
    local a
    a =
        game:GetService("RunService").Stepped:connect(
        function()
            for b, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if noclipping == false then
                    a:Disconnect()
                    return
                end
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end
    )
end
local function c(d, e, f)
    game.StarterGui:SetCore("SendNotification", {Title = d, Text = e, Icon = nil, Duration = f})
end
local g = {
    main = Color3.fromRGB(37, 37, 37),
    secondary = Color3.fromRGB(42, 42, 42),
    accent = Color3.fromRGB(255, 255, 255),
    accent2 = Color3.fromRGB(170, 170, 170)
}
if dark then
    getgenv().theme = {
        main = Color3.fromRGB(37, 37, 37),
        secondary = Color3.fromRGB(42, 42, 42),
        accent = Color3.fromRGB(255, 255, 255),
        accent2 = Color3.fromRGB(223, 223, 223)
    }
end
local h =
    setmetatable(
    {},
    {__index = function(i, j)
            return game:GetService(j)
        end, __newindex = function(i, k)
            i[k] = nil
            return
        end}
)
local l = h.Players
local m = l.LocalPlayer
local n = m:GetMouse()
local o = {
    flags = {},
    binds = {},
    objstorage = {},
    funcstorage = {},
    binding = false,
    tabinfo = {button = nil, tab = nil},
    destroyed = false,
    ui = nil,
    toggleui = function()
    end
}
function o.destroy()
    o.ui:Destroy()
    o.destroyed = true
end
local function p(q, r)
    local s = q
    if typeof(s) == "Instance" then
        if s.UserInputType == Enum.UserInputType.Keyboard and r.KeyCode == s.KeyCode then
            return true
        elseif tostring(s.UserInputType):find("MouseButton") and r.UserInputType == s.UserInputType then
            return true
        end
    end
    if tostring(s):find "MouseButton1" then
        return s == r.UserInputType
    else
        return s == r.KeyCode
    end
end
pcall(
    function()
        h.UserInputService.InputBegan:Connect(
            function(u, w)
                if o.destroyed then
                    return
                end
                if w then
                else
                    if not o.binding then
                        for y, z in next, o.binds do
                            local A = z.location[y]
                            if A and p(A, u) then
                                z.callback()
                            end
                        end
                    end
                end
            end
        )
    end
)
local B = {}
function B:Tween(C, t, data)
    h.TweenService:Create(C, TweenInfo.new(t[1], Enum.EasingStyle[t[2]], Enum.EasingDirection[t[3]]), data):Play()
    return true
end
function B:HoverEffect(C)
    Btn.MouseEnter:Connect(
        function()
            self:Tween(Btn, {0.15, "Sine", "InOut"}, {BackgroundTransparency = 0.3})
        end
    )
    Btn.MouseLeave:Connect(
        function()
            self:Tween(Btn, {0.15, "Sine", "InOut"}, {BackgroundTransparency = 0})
        end
    )
end
function B:Ripple(C)
    spawn(
        function()
            if C.ClipsDescendants ~= true then
                C.ClipsDescendants = true
            end
            local D = Instance.new("ImageLabel")
            D.Name = "Ripple"
            D.Parent = C
            D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            D.BackgroundTransparency = 1.000
            D.ZIndex = 8
            D.Image = "rbxassetid://2708891598"
            D.ImageTransparency = 0.800
            D.ScaleType = Enum.ScaleType.Fit
            D.ImageColor3 = g.accent
            D.Position =
                UDim2.new(
                (n.X - D.AbsolutePosition.X) / C.AbsoluteSize.X,
                0,
                (n.Y - D.AbsolutePosition.Y) / C.AbsoluteSize.Y,
                0
            )
            self:Tween(
                D,
                {.3, "Linear", "InOut"},
                {Position = UDim2.new(-5.5, 0, -5.5, 0), Size = UDim2.new(12, 0, 12, 0)}
            )
            wait(0.15)
            self:Tween(D, {.3, "Linear", "InOut"}, {ImageTransparency = 1})
            wait(.3)
            D:Destroy()
        end
    )
end
function B:Drag(E, F)
    if not F then
        F = E
    end
    local G
    local H
    local I
    local J
    local function K(u)
        local L = u.Position - I
        E.Position = UDim2.new(J.X.Scale, J.X.Offset + L.X, J.Y.Scale, J.Y.Offset + L.Y)
    end
    F.InputBegan:Connect(
        function(u)
            if u.UserInputType == Enum.UserInputType.MouseButton1 then
                G = true
                I = u.Position
                J = E.Position
                u.Changed:Connect(
                    function()
                        if u.UserInputState == Enum.UserInputState.End then
                            G = false
                        end
                    end
                )
            end
        end
    )
    E.InputChanged:Connect(
        function(u)
            if u.UserInputType == Enum.UserInputType.MouseMovement then
                H = u
            end
        end
    )
    h.UserInputService.InputChanged:Connect(
        function(u)
            if u == H and G then
                K(u)
            end
        end
    )
end
local M = false
function B:ChangeTab(N)
    if M then
        return
    end
    local O, P = N[1], N[2]
    if not O or not P then
        return
    end
    if o.tabinfo.button == O then
        return
    end
    M = true
    local Q, R = o.tabinfo.button, o.tabinfo.tab
    local S, T = Q.TabIcon, O.TabIcon
    o.tabinfo = {button = O, tab = P}
    local U = P.Parent
    if U.ClipsDescendants == false then
        U.ClipsDescendants = true
    end
    local V = U.Size
    self:Tween(U, {0.3, "Sine", "InOut"}, {Size = UDim2.new(V.X.Scale, V.X.Offset, 0, 0)})
    self:Tween(Q, {0.3, "Sine", "InOut"}, {TextColor3 = g.accent2})
    self:Tween(S, {0.3, "Sine", "InOut"}, {ImageColor3 = g.accent2})
    wait(0.3)
    R.Visible = false
    P.Visible = true
    self:Tween(U, {0.3, "Sine", "InOut"}, {Size = V})
    self:Tween(O, {0.3, "Sine", "InOut"}, {TextColor3 = g.accent})
    self:Tween(T, {0.3, "Sine", "InOut"}, {ImageColor3 = g.accent})
    wait(0.3)
    M = false
end
function o:UpdateSlider(W, k, X, Y)
    local Z = self.objstorage[W]
    local _ = Z.SliderBar
    local a0 = Z.SliderValHolder.SliderVal
    local a1 = (n.X - _.AbsolutePosition.X) / _.AbsoluteSize.X
    if k then
        a1 = (k - X) / (Y - X)
    end
    a1 = math.clamp(a1, 0, 1)
    k = k or math.floor(X + (Y - X) * a1)
    a0.Text = tostring(k)
    B:Tween(_.SliderFill, {0.05, "Linear", "InOut"}, {Size = UDim2.new(a1, 0, 1, 0)})
    self.flags[W] = tonumber(k)
    self.funcstorage[W](tonumber(k))
end
function o:UpdateToggle(W, k)
    if not o.objstorage[W] then
        return
    end
    local a2 = o.flags[W]
    local C = o.objstorage[W]
    local a3 = o.funcstorage[W]
    if a2 == k then
        return
    end
    if not k then
        k = not a2
    end
    o.flags[W] = k
    local a4 = C.ToggleDisplay.ToggleDisplayFill
    local a5 = UDim2.new(0, 3, 0.5, 0)
    local a6 = UDim2.new(0, 17, 0.5, 0)
    spawn(
        function()
            B:Tween(a4, {0.15, "Sine", "InOut"}, {Size = UDim2.new(0, 24, 0, 16)})
            wait(.15)
            B:Tween(a4, {0.15, "Sine", "InOut"}, {Size = UDim2.new(0, 24, 0, 20)})
        end
    )
    B:Tween(a4, {0.3, "Sine", "InOut"}, {Position = k and a6 or a5, BackgroundColor3 = k and g.accent or g.main})
    spawn(
        function()
            a3(k)
        end
    )
end
function o:Init(a7)
    local a8 = Instance.new("ScreenGui")
    local a9 = Instance.new("Frame")
    local aa = Instance.new("UICorner")
    local ab = Instance.new("Frame")
    local ac = Instance.new("UICorner")
    local ad = Instance.new("TextLabel")
    local ae = Instance.new("Frame")
    local af = Instance.new("UICorner")
    local ag = Instance.new("ScrollingFrame")
    local ah = Instance.new("UIListLayout")
    local ai = Instance.new("UIPadding")
    local aj = Instance.new("Frame")
    local ak = Instance.new("UICorner")
    if syn and syn.protect_gui then
        syn.protect_gui(a8)
    end
    a8.Name = h.HttpService:GenerateGUID()
    a8.Parent = gethui and gethui() or get_hidden_gui and get_hidden_gui() or h.CoreGui
    a8.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    o.ui = a8
    a9.Name = "Main"
    a9.Parent = a8
    a9.BackgroundColor3 = g.secondary
    a9.BorderSizePixel = 0
    a9.Position = UDim2.new(0.297788322, 0, 0.0769230798, 0)
    a9.Size = UDim2.new(0, 609, 0, 505)
    a9.ClipsDescendants = true
    local al = true
    function o.toggleui()
        al = not al
        spawn(
            function()
                if al then
                    wait(0.3)
                end
            end
        )
        B:Tween(a9, {0.3, "Sine", "InOut"}, {Size = UDim2.new(0, 609, 0, al and 505 or 0)})
    end
    aa.CornerRadius = UDim.new(0, 4)
    aa.Name = "MainC"
    aa.Parent = a9
    ab.Name = "Top"
    ab.Parent = a9
    ab.BackgroundColor3 = g.main
    ab.BorderSizePixel = 0
    ab.Position = UDim2.new(0, 6, 0, 6)
    ab.Size = UDim2.new(0, 597, 0, 46)
    B:Drag(a9, ab)
    ac.CornerRadius = UDim.new(0, 4)
    ac.Name = "TopC"
    ac.Parent = ab
    ad.Name = "Title"
    ad.Parent = ab
    ad.BackgroundColor3 = g.accent
    ad.BackgroundTransparency = 1.000
    ad.BorderSizePixel = 0
    ad.Position = UDim2.new(0.0234505869, 0, 0, 0)
    ad.Size = UDim2.new(0, 186, 0, 46)
    ad.Font = Enum.Font.GothamSemibold
    ad.Text = a7
    ad.TextColor3 = g.accent
    ad.TextSize = 16.000
    ad.TextXAlignment = Enum.TextXAlignment.Left
    ae.Name = "Side"
    ae.Parent = a9
    ae.BackgroundColor3 = g.main
    ae.BorderSizePixel = 0
    ae.Position = UDim2.new(0, 6, 0, 58)
    ae.Size = UDim2.new(0, 180, 0, 441)
    af.CornerRadius = UDim.new(0, 4)
    af.Name = "SideC"
    af.Parent = ae
    ag.Name = "BtnHolder"
    ag.Parent = ae
    ag.Active = true
    ag.BackgroundColor3 = g.accent
    ag.BackgroundTransparency = 1.000
    ag.BorderSizePixel = 0
    ag.Size = UDim2.new(0, 180, 0, 441)
    ag.ScrollBarThickness = 2
    ah.Name = "BtnHolderL"
    ah.Parent = ag
    ah.HorizontalAlignment = Enum.HorizontalAlignment.Center
    ah.SortOrder = Enum.SortOrder.LayoutOrder
    ah.Padding = UDim.new(0, 4)
    ai.Name = "BtnHolderP"
    ai.Parent = ag
    ai.PaddingTop = UDim.new(0, 4)
    aj.Name = "TabHolder"
    aj.Parent = a9
    aj.BackgroundColor3 = g.main
    aj.BorderSizePixel = 0
    aj.Position = UDim2.new(0, 192, 0, 58)
    aj.Size = UDim2.new(0, 411, 0, 441)
    ak.CornerRadius = UDim.new(0, 4)
    ak.Name = "TabHolderC"
    ak.Parent = aj
    ah:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
        function()
            ag.CanvasSize = UDim2.new(0, 0, 0, ah.AbsoluteContentSize.Y + 6)
        end
    )
    local am = {}
    function am:Tab(an, ao)
        local ap = Instance.new("TextButton")
        local aq = Instance.new("UICorner")
        local ar = Instance.new("ImageLabel")
        local as = Instance.new("ScrollingFrame")
        local at = Instance.new("UIListLayout")
        local au = Instance.new("UIPadding")
        ap.Name = "TabOpen"
        ap.Parent = ag
        ap.BackgroundColor3 = g.secondary
        ap.BackgroundTransparency = 1.000
        ap.BorderSizePixel = 0
        ap.Position = UDim2.new(-0.00277777785, 0, 0.00907029491, 0)
        ap.Size = UDim2.new(0, 164, 0, 30)
        ap.AutoButtonColor = false
        ap.Font = Enum.Font.GothamSemibold
        ap.Text = ("       %s"):format(an)
        ap.TextColor3 = o.tabinfo.button == nil and g.accent or g.accent2
        ap.TextSize = 14.000
        ap.TextXAlignment = Enum.TextXAlignment.Left
        aq.CornerRadius = UDim.new(0, 4)
        aq.Name = "TabOpenC"
        aq.Parent = ap
        ar.Name = "TabIcon"
        ar.Parent = ap
        ar.BackgroundTransparency = 1.000
        ar.Position = UDim2.new(0, 0, 0.166666672, 0)
        ar.Size = UDim2.new(0, 20, 0, 20)
        ar.Image = ("rbxassetid://%s"):format(ao or 4370341699)
        ar.ScaleType = Enum.ScaleType.Fit
        ar.ImageColor3 = o.tabinfo.button == nil and g.accent or g.accent2
        as.Name = "Tab"
        as.Parent = aj
        as.Active = true
        as.BackgroundColor3 = g.accent
        as.BackgroundTransparency = 1.000
        as.BorderSizePixel = 0
        as.Size = UDim2.new(0, 411, 0, 441)
        as.ScrollBarThickness = 2
        as.Visible = o.tabinfo.button == nil
        at.Name = "TabL"
        at.Parent = as
        at.HorizontalAlignment = Enum.HorizontalAlignment.Center
        at.SortOrder = Enum.SortOrder.LayoutOrder
        at.Padding = UDim.new(0, 8)
        au.Name = "TabP"
        au.Parent = as
        au.PaddingTop = UDim.new(0, 8)
        if o.tabinfo.button == nil then
            o.tabinfo.button = ap
            o.tabinfo.tab = as
        end
        ap.MouseButton1Click:Connect(
            function()
                spawn(
                    function()
                        B:Ripple(ap)
                    end
                )
                B:ChangeTab({ap, as})
            end
        )
        at:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
            function()
                as.CanvasSize = UDim2.new(0, 0, 0, at.AbsoluteContentSize.Y + 16)
            end
        )
        local av = {}
        function av:Section(aw)
            local ax = Instance.new("Frame")
            local ay = Instance.new("UICorner")
            local az = Instance.new("UIPadding")
            local aA = Instance.new("UIListLayout")
            local aB = Instance.new("TextLabel")
            ax.Name = "Section"
            ax.Parent = as
            ax.BackgroundColor3 = g.secondary
            ax.BorderSizePixel = 0
            ax.Position = UDim2.new(0.0231143553, 0, -0.981859386, 0)
            ax.Size = UDim2.new(0, 392, 0, 568)
            ay.CornerRadius = UDim.new(0, 4)
            ay.Name = "SectionC"
            ay.Parent = ax
            az.Name = "SectionP"
            az.Parent = ax
            az.PaddingTop = UDim.new(0, 8)
            aA.Name = "SectionL"
            aA.Parent = ax
            aA.HorizontalAlignment = Enum.HorizontalAlignment.Center
            aA.SortOrder = Enum.SortOrder.LayoutOrder
            aA.Padding = UDim.new(0, 8)
            aB.Name = "SectionTitle"
            aB.Parent = ax
            aB.BackgroundColor3 = g.accent
            aB.BackgroundTransparency = 1.000
            aB.BorderSizePixel = 0
            aB.Position = UDim2.new(0.00255102036, 0, 0.0355555564, 0)
            aB.Size = UDim2.new(0, 390, 0, 18)
            aB.Font = Enum.Font.GothamSemibold
            aB.Text = ("   %s"):format(aw)
            aB.TextColor3 = g.accent
            aB.TextSize = 14.000
            aB.TextXAlignment = Enum.TextXAlignment.Left
            aA:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    ax.Size = UDim2.new(0, 392, 0, aA.AbsoluteContentSize.Y + 13)
                end
            )
            local aC = {}
            function aC:Button(aD, callback)
                assert(aD, "text is a required arg")
                local callback = callback or function()
                    end
                local Btn = Instance.new("TextButton")
                local aE = Instance.new("UICorner")
                Btn.Name = "Btn"
                Btn.Parent = ax
                Btn.BackgroundColor3 = g.main
                Btn.BorderSizePixel = 0
                Btn.Position = UDim2.new(-0.00382653065, 0, 0.568888903, 0)
                Btn.Size = UDim2.new(0, 382, 0, 42)
                Btn.AutoButtonColor = false
                Btn.Font = Enum.Font.GothamSemibold
                Btn.Text = ("   %s"):format(aD)
                Btn.TextColor3 = g.accent
                Btn.TextSize = 14.000
                Btn.TextXAlignment = Enum.TextXAlignment.Left
                aE.CornerRadius = UDim.new(0, 4)
                aE.Name = "BtnC"
                aE.Parent = Btn
                Btn.MouseButton1Click:Connect(
                    function()
                        spawn(
                            function()
                                B:Ripple(Btn)
                            end
                        )
                        spawn(callback)
                    end
                )
            end
            function aC:Label(aD)
                local aF = Instance.new("TextLabel")
                local aG = Instance.new("UICorner")
                aF.Name = "Label"
                aF.Parent = ax
                aF.BackgroundColor3 = g.main
                aF.BackgroundTransparency = 0
                aF.BorderSizePixel = 0
                aF.Position = UDim2.new(0.00255102036, 0, 0.0355555564, 0)
                aF.Size = UDim2.new(0, 382, 0, 26)
                aF.Font = Enum.Font.GothamSemibold
                aF.TextColor3 = g.accent
                aF.TextSize = 14.000
                aF.Text = aD
                aG.Name = "LabelC"
                aG.Parent = aF
                aG.CornerRadius = UDim.new(0, 4)
                return aF
            end
            function aC:Toggle(aD, W, aH, callback)
                assert(aD, "text is a required arg")
                assert(W, "flag is a required arg")
                local aH = aH or false
                local callback = callback or function()
                    end
                local aI = Instance.new("TextButton")
                local aJ = Instance.new("UICorner")
                local aK = Instance.new("Frame")
                local aL = Instance.new("UICorner")
                local aM = Instance.new("Frame")
                local aN = Instance.new("UICorner")
                aI.Name = "Toggle"
                aI.Parent = ax
                aI.BackgroundColor3 = g.main
                aI.BorderSizePixel = 0
                aI.Position = UDim2.new(-0.00382653065, 0, 0.346666664, 0)
                aI.Size = UDim2.new(0, 382, 0, 42)
                aI.AutoButtonColor = false
                aI.Font = Enum.Font.GothamSemibold
                aI.Text = ("   %s"):format(aD)
                aI.TextColor3 = g.accent
                aI.TextSize = 14.000
                aI.TextXAlignment = Enum.TextXAlignment.Left
                aJ.CornerRadius = UDim.new(0, 4)
                aJ.Name = "ToggleC"
                aJ.Parent = aI
                aK.Name = "ToggleDisplay"
                aK.Parent = aI
                aK.BackgroundColor3 = g.secondary
                aK.BorderSizePixel = 0
                aK.Position = UDim2.new(0.846311867, 0, 0.190476194, 0)
                aK.Size = UDim2.new(0, 45, 0, 26)
                aL.CornerRadius = UDim.new(0, 4)
                aL.Name = "ToggleDisplayC"
                aL.Parent = aK
                aM.Name = "ToggleDisplayFill"
                aM.Parent = aK
                aM.AnchorPoint = Vector2.new(0, 0.5)
                aM.BackgroundColor3 = g.main
                aM.BorderSizePixel = 0
                aM.Position = UDim2.new(0, 3, 0.5, 0)
                aM.Size = UDim2.new(0, 24, 0, 20)
                aN.CornerRadius = UDim.new(0, 4)
                aN.Name = "ToggleDisplayFillC"
                aN.Parent = aM
                o.flags[W] = false
                o.funcstorage[W] = callback
                o.objstorage[W] = aI
                if aH ~= false then
                    o:UpdateToggle(W, true)
                end
                aK.InputBegan:Connect(
                    function(r)
                        if r.UserInputType == Enum.UserInputType.MouseButton1 then
                            o:UpdateToggle(W)
                        end
                    end
                )
            end
            function aC:Textbox(aD, W, aO, callback)
                assert(aD, "text is a required arg")
                assert(W, "flag is a required arg")
                local aO = aO or ""
                local callback = callback or function()
                    end
                o.flags[W] = aO
                local aP = Instance.new("TextButton")
                local aQ = Instance.new("UICorner")
                local aR = Instance.new("Frame")
                local aS = Instance.new("UIListLayout")
                local aT = Instance.new("TextBox")
                local aU = Instance.new("UICorner")
                aP.Name = "Textbox"
                aP.Parent = ax
                aP.BackgroundColor3 = g.main
                aP.BorderSizePixel = 0
                aP.Position = UDim2.new(-0.0382653065, 0, 0.903660059, 0)
                aP.Size = UDim2.new(0, 382, 0, 42)
                aP.AutoButtonColor = false
                aP.Font = Enum.Font.GothamSemibold
                aP.Text = ("   %s"):format(aD)
                aP.TextColor3 = g.accent
                aP.TextSize = 14.000
                aP.TextXAlignment = Enum.TextXAlignment.Left
                aQ.CornerRadius = UDim.new(0, 4)
                aQ.Name = "TextboxC"
                aQ.Parent = aP
                aR.Name = "TextboxValHolder"
                aR.Parent = aP
                aR.BackgroundColor3 = g.accent
                aR.BackgroundTransparency = 1.000
                aR.BorderSizePixel = 0
                aR.Position = UDim2.new(0.746835411, 0, 0, 0)
                aR.Size = UDim2.new(0, 84, 0, 42)
                aS.Name = "TextboxValHolderL"
                aS.Parent = aR
                aS.FillDirection = Enum.FillDirection.Horizontal
                aS.HorizontalAlignment = Enum.HorizontalAlignment.Right
                aS.SortOrder = Enum.SortOrder.LayoutOrder
                aS.VerticalAlignment = Enum.VerticalAlignment.Center
                aT.Name = "TextInp"
                aT.Parent = aR
                aT.BackgroundColor3 = g.secondary
                aT.BorderSizePixel = 0
                aT.Position = UDim2.new(-0.190476194, 0, 0.190476194, 0)
                aT.Size = UDim2.new(0, 100, 0, 26)
                aT.Font = Enum.Font.Gotham
                aT.Text = aO
                aT.TextColor3 = g.accent
                aT.TextSize = 14.000
                aT.Size = UDim2.new(0, aT.TextBounds.X + 14, 0, 26)
                aU.CornerRadius = UDim.new(0, 4)
                aU.Name = "TextInpC"
                aU.Parent = aT
                aT.FocusLost:Connect(
                    function()
                        if aT.Text == "" then
                            aT.Text = o.flags[W]
                        end
                        o.flags[W] = aT.Text
                        callback(aT.Text)
                    end
                )
                aT:GetPropertyChangedSignal("TextBounds"):Connect(
                    function()
                        B:Tween(aT, {0.1, "Linear", "InOut"}, {Size = UDim2.new(0, aT.TextBounds.X + 14, 0, 26)})
                    end
                )
            end
            function aC:Slider(aD, W, aO, X, Y, callback)
                assert(aD, "text is a required arg")
                assert(W, "flag is a required arg")
                assert(aO, "default is a required arg")
                assert(X, "min is a required arg")
                assert(Y, "min is a required arg")
                local k = aO or X
                o.flags[W] = k
                local callback = callback or function()
                    end
                local aV = Instance.new("TextButton")
                local aW = Instance.new("UICorner")
                local aX = Instance.new("TextLabel")
                local aY = Instance.new("Frame")
                local aZ = Instance.new("UICorner")
                local a_ = Instance.new("Frame")
                local b0 = Instance.new("UICorner")
                local b1 = Instance.new("Frame")
                local b2 = Instance.new("UIListLayout")
                local b3 = Instance.new("TextBox")
                local b4 = Instance.new("UICorner")
                aV.Name = "Slider"
                aV.Parent = ax
                aV.BackgroundColor3 = g.main
                aV.BorderSizePixel = 0
                aV.Position = UDim2.new(-0.00382653065, 0, 0.0355555564, 0)
                aV.Size = UDim2.new(0, 382, 0, 62)
                aV.AutoButtonColor = false
                aV.Font = Enum.Font.GothamSemibold
                aV.Text = ""
                aV.TextColor3 = g.accent
                aV.TextSize = 14.000
                aV.TextXAlignment = Enum.TextXAlignment.Left
                o.objstorage[W] = aV
                o.funcstorage[W] = callback
                aW.CornerRadius = UDim.new(0, 4)
                aW.Name = "SliderC"
                aW.Parent = aV
                aX.Name = "SliderText"
                aX.Parent = aV
                aX.BackgroundColor3 = g.accent
                aX.BackgroundTransparency = 1.000
                aX.BorderSizePixel = 0
                aX.Size = UDim2.new(0, 200, 0, 42)
                aX.Font = Enum.Font.GothamSemibold
                aX.Text = ("   %s"):format(aD)
                aX.TextColor3 = g.accent
                aX.TextSize = 14.000
                aX.TextXAlignment = Enum.TextXAlignment.Left
                aY.Name = "SliderBar"
                aY.Parent = aV
                aY.BackgroundColor3 = g.secondary
                aY.BorderSizePixel = 0
                aY.Position = UDim2.new(0, 9, 0, 42)
                aY.Size = UDim2.new(0, 363, 0, 10)
                aZ.CornerRadius = UDim.new(0, 4)
                aZ.Name = "SliderBarC"
                aZ.Parent = aY
                a_.Name = "SliderFill"
                a_.Parent = aY
                a_.BackgroundColor3 = g.accent
                a_.BorderSizePixel = 0
                a_.Size = UDim2.new(0, 0, 0, 10)
                b0.CornerRadius = UDim.new(0, 4)
                b0.Name = "SliderFillC"
                b0.Parent = a_
                b1.Name = "SliderValHolder"
                b1.Parent = aV
                b1.BackgroundColor3 = g.accent
                b1.BackgroundTransparency = 1.000
                b1.BorderSizePixel = 0
                b1.Position = UDim2.new(0.746835411, 0, 0, 0)
                b1.Size = UDim2.new(0, 84, 0, 42)
                b2.Name = "SliderValHolderL"
                b2.Parent = b1
                b2.FillDirection = Enum.FillDirection.Horizontal
                b2.HorizontalAlignment = Enum.HorizontalAlignment.Right
                b2.SortOrder = Enum.SortOrder.LayoutOrder
                b2.VerticalAlignment = Enum.VerticalAlignment.Center
                b3.Name = "SliderVal"
                b3.Parent = b1
                b3.BackgroundColor3 = g.secondary
                b3.BorderSizePixel = 0
                b3.Position = UDim2.new(0.452380955, 0, 0.142857149, 0)
                b3.Size = UDim2.new(0, 46, 0, 26)
                b3.Font = Enum.Font.Gotham
                b3.Text = k
                b3.TextColor3 = g.accent
                b3.TextSize = 14.000
                b4.CornerRadius = UDim.new(0, 4)
                b4.Name = "SliderValC"
                b4.Parent = b3
                b3.Size = UDim2.new(0, b3.TextBounds.X + 14, 0, 26)
                b3:GetPropertyChangedSignal("TextBounds"):Connect(
                    function()
                        B:Tween(b3, {0.1, "Linear", "InOut"}, {Size = UDim2.new(0, b3.TextBounds.X + 14, 0, 26)})
                    end
                )
                o:UpdateSlider(W, k, X, Y)
                local G = false
                aY.InputBegan:Connect(
                    function(u)
                        if u.UserInputType == Enum.UserInputType.MouseButton1 then
                            o:UpdateSlider(W, nil, X, Y)
                            G = true
                        end
                    end
                )
                aY.InputEnded:Connect(
                    function(u)
                        if u.UserInputType == Enum.UserInputType.MouseButton1 then
                            G = false
                        end
                    end
                )
                h.UserInputService.InputChanged:Connect(
                    function(u)
                        if G and u.UserInputType == Enum.UserInputType.MouseMovement then
                            o:UpdateSlider(W, nil, X, Y)
                        end
                    end
                )
                local b5 = false
                local b6 = {[""] = true, ["-"] = true}
                b3.Focused:Connect(
                    function()
                        b5 = true
                    end
                )
                b3.FocusLost:Connect(
                    function()
                        b5 = false
                        if not tonumber(b3.Text) then
                            o:UpdateSlider(W, aO or X, X, Y)
                        end
                    end
                )
                b3:GetPropertyChangedSignal("Text"):Connect(
                    function()
                        if not b5 then
                            return
                        end
                        b3.Text = b3.Text:gsub("%D+", "")
                        local aD = b3.Text
                        if not tonumber(aD) then
                            b3.Text = b3.Text:gsub("%D+", "")
                        elseif not b6[aD] then
                            if tonumber(aD) > Y then
                                aD = Y
                                b3.Text = tostring(Y)
                            end
                            o:UpdateSlider(W, tonumber(aD) or k, X, Y)
                        end
                    end
                )
            end
            function aC:Keybind(aD, W, aO, callback)
                assert(aD, "text is a required arg")
                assert(W, "flag is a required arg")
                assert(aO, "default is a required arg")
                local callback = callback or function()
                    end
                local b7 = {Return = true, Space = true, Tab = true, Unknown = true}
                local b8 = {
                    RightControl = "Right Ctrl",
                    LeftControl = "Left Ctrl",
                    LeftShift = "Left Shift",
                    RightShift = "Right Shift",
                    Semicolon = ";",
                    Quote = '"',
                    LeftBracket = "[",
                    RightBracket = "]",
                    Equals = "=",
                    Minus = "-",
                    RightAlt = "Right Alt",
                    LeftAlt = "Left Alt"
                }
                local b6 = {MouseButton1 = false, MouseButton2 = false}
                local b9 = aO and (b8[aO.Name] or aO.Name) or "None"
                o.flags[W] = aO or "None"
                local ba = Instance.new("TextButton")
                local bb = Instance.new("UICorner")
                local bc = Instance.new("Frame")
                local bd = Instance.new("UIListLayout")
                local be = Instance.new("TextButton")
                local bf = Instance.new("UICorner")
                ba.Name = "Keybind"
                ba.Parent = ax
                ba.BackgroundColor3 = g.main
                ba.BorderSizePixel = 0
                ba.Position = UDim2.new(-0.00382653065, 0, 0.346666664, 0)
                ba.Size = UDim2.new(0, 382, 0, 42)
                ba.AutoButtonColor = false
                ba.Font = Enum.Font.GothamSemibold
                ba.Text = ("   %s"):format(aD)
                ba.TextColor3 = g.accent
                ba.TextSize = 14.000
                ba.TextXAlignment = Enum.TextXAlignment.Left
                bb.CornerRadius = UDim.new(0, 4)
                bb.Name = "KeybindC"
                bb.Parent = ba
                bc.Name = "SliderValHolder"
                bc.Parent = ba
                bc.BackgroundColor3 = g.accent
                bc.BackgroundTransparency = 1.000
                bc.BorderSizePixel = 0
                bc.Position = UDim2.new(0.746835411, 0, 0, 0)
                bc.Size = UDim2.new(0, 84, 0, 42)
                bd.Name = "SliderValHolderL"
                bd.Parent = bc
                bd.FillDirection = Enum.FillDirection.Horizontal
                bd.HorizontalAlignment = Enum.HorizontalAlignment.Right
                bd.SortOrder = Enum.SortOrder.LayoutOrder
                bd.VerticalAlignment = Enum.VerticalAlignment.Center
                be.Parent = bc
                be.BackgroundColor3 = g.secondary
                be.BorderSizePixel = 0
                be.Position = UDim2.new(0.357142866, 0, 0.190476194, 0)
                be.Size = UDim2.new(0, 0, 0, 26)
                be.AutoButtonColor = false
                be.Font = Enum.Font.Gotham
                be.Text = b9
                be.TextColor3 = g.accent
                be.TextSize = 14.000
                bf.CornerRadius = UDim.new(0, 4)
                bf.Name = "SliderValC"
                bf.Parent = Bind
                be.Size = UDim2.new(0, be.TextBounds.X + 14, 0, 26)
                be:GetPropertyChangedSignal("TextBounds"):Connect(
                    function()
                        B:Tween(be, {0.1, "Linear", "InOut"}, {Size = UDim2.new(0, be.TextBounds.X + 14, 0, 26)})
                    end
                )
                be.MouseButton1Click:Connect(
                    function()
                        o.binding = true
                        be.Text = "..."
                        local bg, bh = h.UserInputService.InputBegan:wait()
                        local aw = tostring(bg.KeyCode.Name)
                        local bi = tostring(bg.UserInputType.Name)
                        if
                            bg.UserInputType ~= Enum.UserInputType.Keyboard and b6[bg.UserInputType.Name] and
                                not data.KbOnly or
                                bg.KeyCode and not b7[bg.KeyCode.Name]
                         then
                            local aw =
                                bg.UserInputType ~= Enum.UserInputType.Keyboard and bg.UserInputType.Name or
                                bg.KeyCode.Name
                            o.flags[W] = bg
                            be.Text = b8[aw] or aw
                        else
                            if o.flags[W] then
                                if
                                    not pcall(
                                        function()
                                            return o.flags[W].UserInputType
                                        end
                                    )
                                 then
                                    local aw = tostring(o.flags[W])
                                    be.Text = b8[aw] or aw
                                else
                                    local aw =
                                        o.flags[W].UserInputType ~= Enum.UserInputType.Keyboard and
                                        o.flags[W].UserInputType.Name or
                                        o.flags[W].KeyCode.Name
                                    be.Text = b8[aw] or aw
                                end
                            end
                        end
                        wait(0.1)
                        o.binding = false
                    end
                )
                if o.flags[W] then
                    be.Text = b8[tostring(o.flags[W].Name)] or tostring(o.flags[W].Name)
                end
                o.binds[W] = {location = o.flags, callback = function()
                        callback()
                    end}
            end
            function aC:Dropdown(aD, W, bj, callback)
                assert(aD, "text is a required arg")
                assert(W, "flag is a required arg")
                assert(bj, "options is a required arg")
                if type(bj) ~= "table" then
                    bj = {"No Options Found"}
                end
                if #bj < 1 then
                    bj = {"No Options Found"}
                end
                local bk = {}
                local callback = callback or function()
                    end
                o.flags[W] = bj[1]
                local bl = Instance.new("TextButton")
                local bm = Instance.new("UICorner")
                local bn = Instance.new("ImageLabel")
                local bo = Instance.new("TextButton")
                local bp = Instance.new("UICorner")
                local bq = Instance.new("ScrollingFrame")
                local br = Instance.new("UIListLayout")
                local bs = Instance.new("UIPadding")
                bl.Name = "DropdownTop"
                bl.Parent = ax
                bl.BackgroundColor3 = g.main
                bl.BorderSizePixel = 0
                bl.Position = UDim2.new(-0.00382653065, 0, 0.346666664, 0)
                bl.Size = UDim2.new(0, 382, 0, 42)
                bl.AutoButtonColor = false
                bl.Font = Enum.Font.GothamSemibold
                bl.Text = ("   %s"):format(o.flags[W])
                bl.TextColor3 = g.accent
                bl.TextSize = 14.000
                bl.TextXAlignment = Enum.TextXAlignment.Left
                bm.CornerRadius = UDim.new(0, 4)
                bm.Name = "DropdownTopC"
                bm.Parent = bl
                bn.Name = "Back"
                bn.Parent = bl
                bn.BackgroundTransparency = 1.000
                bn.Position = UDim2.new(0.887434542, 0, 0.142857149, 0)
                bn.Rotation = -90.000
                bn.Size = UDim2.new(0, 30, 0, 30)
                bn.Image = "rbxassetid://4370337241"
                bn.ScaleType = Enum.ScaleType.Fit
                bn.ImageColor3 = g.accent
                bo.Name = "DropdownBottom"
                bo.Parent = ax
                bo.BackgroundColor3 = g.main
                bo.BorderSizePixel = 0
                bo.Position = UDim2.new(0.0127551025, 0, 0.616632879, 0)
                bo.Size = UDim2.new(0, 382, 0, 0)
                bo.AutoButtonColor = false
                bo.Font = Enum.Font.GothamSemibold
                bo.Text = ""
                bo.TextColor3 = g.accent
                bo.TextSize = 14.000
                bo.TextXAlignment = Enum.TextXAlignment.Left
                bo.Visible = false
                bp.CornerRadius = UDim.new(0, 4)
                bp.Name = "DropdownBottomC"
                bp.Parent = bo
                bq.Name = "DropdownObjects"
                bq.Parent = bo
                bq.Active = true
                bq.BackgroundColor3 = g.accent
                bq.BackgroundTransparency = 1.000
                bq.BorderSizePixel = 0
                bq.Size = UDim2.new(1, 0, 1, 0)
                bq.ScrollBarThickness = 2
                br.Name = "DropdownObjectsList"
                br.Parent = bq
                br.HorizontalAlignment = Enum.HorizontalAlignment.Center
                br.SortOrder = Enum.SortOrder.LayoutOrder
                br.Padding = UDim.new(0, 4)
                bs.Name = "DropdownObjectsPadding"
                bs.Parent = bq
                bs.PaddingTop = UDim.new(0, 4)
                br:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                    function()
                        bq.CanvasSize = UDim2.new(0, 0, 0, br.AbsoluteContentSize.Y + 7)
                    end
                )
                local bt = false
                local function bu()
                    bt = not bt
                    if not bt then
                        spawn(
                            function()
                                wait(.3)
                                bo.Visible = false
                            end
                        )
                    else
                        bo.Visible = true
                    end
                    local bv = 183
                    if br.AbsoluteContentSize.Y < bv then
                        bv = br.AbsoluteContentSize.Y
                    end
                    bl.Text = ("   %s"):format(bt and aD or o.flags[W])
                    B:Tween(bn, {0.3, "Sine", "InOut"}, {Rotation = bt and 90 or -90})
                    B:Tween(bo, {0.3, "Sine", "InOut"}, {Size = UDim2.new(0, 382, 0, bt and bv + 3 or 0)})
                end
                br:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                    function()
                        if not bt then
                            return
                        end
                        local bv = 183
                        if br.AbsoluteContentSize.Y < bv then
                            bv = br.AbsoluteContentSize.Y
                        end
                        bl.Text = ("   %s"):format(bt and aD or o.flags[W])
                        B:Tween(bn, {0.3, "Sine", "InOut"}, {Rotation = bt and 90 or -90})
                        B:Tween(bo, {0.3, "Sine", "InOut"}, {Size = UDim2.new(0, 382, 0, bt and bv + 3 or 0)})
                    end
                )
                bn.InputEnded:Connect(
                    function(r)
                        if r.UserInputType == Enum.UserInputType.MouseButton1 then
                            bu()
                        end
                    end
                )
                local bw = 0
                local bx = nil
                for by, v in pairs(bj) do
                    bw = bw + 1
                    local bz = Instance.new("TextButton")
                    table.insert(bk, bz)
                    if bw == 1 then
                        bx = bz
                    end
                    bz.Name = "Option"
                    bz.Parent = bq
                    bz.BackgroundColor3 = g.secondary
                    bz.BackgroundTransparency = 1.000
                    bz.BorderSizePixel = 0
                    bz.Position = UDim2.new(0.285340309, 0, 0.0218579229, 0)
                    bz.Size = UDim2.new(0, 372, 0, 26)
                    bz.AutoButtonColor = false
                    bz.Font = Enum.Font.GothamSemibold
                    bz.Text = v
                    bz.TextColor3 = bz == bx and g.accent or g.accent2
                    bz.TextSize = 14.000
                    bz.MouseButton1Click:Connect(
                        function()
                            if bz ~= bx then
                                bx.TextColor3 = g.accent2
                                bz.TextColor3 = g.accent
                                bx = bz
                            end
                            o.flags[W] = v
                            spawn(bu)
                            spawn(
                                function()
                                    callback(v)
                                end
                            )
                        end
                    )
                end
                local bA = {}
                function bA:refresh(bB)
                    for by, v in pairs(bk) do
                        v:Destroy()
                    end
                    bk = {}
                    bx = nil
                    bw = 0
                    for by, v in pairs(bB) do
                        bw = bw + 1
                        local bz = Instance.new("TextButton")
                        table.insert(bk, bz)
                        if bw == 1 then
                            bx = bz
                        end
                        bz.Name = "Option"
                        bz.Parent = bq
                        bz.BackgroundColor3 = g.secondary
                        bz.BackgroundTransparency = 1.000
                        bz.BorderSizePixel = 0
                        bz.Position = UDim2.new(0.285340309, 0, 0.0218579229, 0)
                        bz.Size = UDim2.new(0, 372, 0, 26)
                        bz.AutoButtonColor = false
                        bz.Font = Enum.Font.GothamSemibold
                        bz.Text = v
                        bz.TextColor3 = bz == bx and g.accent or g.accent2
                        bz.TextSize = 14.000
                        bz.MouseButton1Click:Connect(
                            function()
                                if bz ~= bx then
                                    bx.TextColor3 = g.accent2
                                    bz.TextColor3 = g.accent
                                    bx = bz
                                end
                                o.flags[W] = v
                                spawn(bu)
                                spawn(
                                    function()
                                        callback(v)
                                    end
                                )
                            end
                        )
                    end
                end
                return bA
            end
            return aC
        end
        return av
    end
    return am
end]]
